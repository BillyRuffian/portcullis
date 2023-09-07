class FetchMemberJob
  include Sidekiq::Job
  include Sidekiq::Throttled::Job

  include MembersConcern
  include PartyJobsConcern

  MY_OBSERVER = lambda do |strategy, *args|
    logger.info('THROTTLE')
  end

  sidekiq_options queue: :api

  sidekiq_throttle( threshold: { limit: 100, period: 5.minutes } )

  def perform(member_ref, enqueue_related_jobs = false)
    logger.info { "FetchMemberJob fetching member reference #{member_ref}"}

    member_data = fetch_member_api_data(member_ref)
    return nil unless member_data

    party = save_or_update_party(member_data.latest_party)
    member = save_or_update_member(member_data, party)

    if enqueue_related_jobs
      FetchMemberConstituencyJob.perform_at(10.minutes.from_now, member_ref, enqueue_related_jobs)
    end

    return member
  end


  def fetch_member_api_data(member_ref)
    member_data = members_api.api_members_id_get(member_ref)
    return member_data.value
  rescue ParliamentMembers::ApiError => e
    logger.info { "FetchMemberJob API lookup failed for member reference #{member_ref}: #{e.message}"}
    return nil
  end


  def save_or_update_member(member_data, party)
    member = Member.find_by_member_ref(member_data.id) || Member.new
    member.update(
      member_ref: member_data.id,
      party: party,
      house: member_data.latest_house_membership.house,
      list_as: member_data.name_list_as,
      display_as: member_data.name_display_as,
      full_title: member_data.name_full_title,
      address_as: member_data.name_address_as,
      gender: member_data.gender,
      start_date: member_data.latest_house_membership.membership_start_date,
      end_date: member_data.latest_house_membership.membership_end_date,
      end_reason: member_data.latest_house_membership.membership_end_reason,
      thumbnail_url: member_data.thumbnail_url,
      constituency_name: member_data.latest_house_membership&.membership_from,
      constituency_ref: member_data.latest_house_membership&.membership_from_id
    )

    return member
  end
end
