class FetchMemberConstituencyJob
  include Sidekiq::Job
  include Sidekiq::Throttled::Job

  include LocationsConcern

  sidekiq_options queue: :api
  
  sidekiq_throttle( threshold: { limit: 100, period: 5.minutes } )

  def perform(member_ref, enqueue_related_jobs = false)
    logger.info { "FetchMemberConstituencyJob fetching constituency for member reference #{member_ref}"}
    member = Member.find_by_member_ref(member_ref)
    return if member.nil?
    return if member.house == 'lords'
    return if member.constituency.present? && member.constituency.updated_at > 1.week.ago

    constituency_data = begin
      locations_api.api_location_constituency_id_get(member.constituency_ref).value
    rescue ParliamentMembers::ApiError => e
      logger.info { "FetchMemberConstituencyJob API lookup failed for member reference #{member_ref} in constituency ref #{member.constituency_ref}: #{e.message}"}
      nil
    end

    return nil unless constituency_data

    summary = begin
      locations_api.api_location_constituency_id_synopsis_get(member.constituency_ref).value
    rescue ParliamentMembers::ApiError
      logger.info { "FetchMemberConstituencyJob constituency ref #{member.constituency_ref} has no summary"}
      nil
    end

    geometry = begin
      locations_api.api_location_constituency_id_geometry_get(member.constituency_ref).value
    rescue ParliamentMembers::ApiError
      logger.info { "FetchMemberConstituencyJob constituency ref #{member.constituency_ref} has no geometry"}
      nil
    end

    constituency = Constituency.find_by_constituency_ref(constituency_data.id) || Constituency.new
    constituency.update(
      constituency_ref: constituency_data.id,
      name: constituency_data.name,
      start_date: constituency_data.start_date,
      end_date: constituency_data.end_date,
      summary:,
      geometry:,
      member:
    )

    return constituency
  end
end
