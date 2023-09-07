class FetchCommonsDivisionVotesJob
  include Sidekiq::Job
  include Sidekiq::Throttled::Job

  include CommonsDivisionsConcern

  sidekiq_options queue: :api

  sidekiq_throttle( threshold: { limit: 100, period: 5.minutes } )

  def perform(division_ref)
    division = CommonsDivision.find_by_division_ref(division_ref)
    return unless division

    vote_data = fetch_division_details(division_ref)
    return nil unless vote_data

    save_or_update_votes(division, vote_data)
  end

  def fetch_division_details(division_ref)
    commons_divisions_api.divisions_get_division_by_id(division_ref, 'json')
  rescue ParliamentCommonsVotes::ApiError
    logger.info { "FetchCommonsDivisionVotes API lookup failed for division #{division_ref}: #{e.message}"}
    return nil
  end

  def save_or_update_votes(division, vote_data)
    ActiveRecord::Base.transaction do 
      division.commons_votes.destroy_all
      [:aye_tellers, :no_tellers, :ayes, :noes, :no_vote_recorded].each do |vote_type|
        vote_data.send(vote_type)&.each do |v|
          member = Member.find_by_member_ref(v.member_id)
          next unless member

          CommonsVote.create(
            member:,
            commons_division: division,
            vote: case vote_type
                  when :aye_tellers
                    :aye_teller
                  when :no_tellers 
                    :no_teller
                  when :ayes 
                    :aye
                  when :noes 
                    :no
                  else
                    :no_vote_recorded
                  end
          )
        end
      end
    end
  end
end
