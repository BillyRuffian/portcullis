class FetchMemberJob < ApplicationJob
  include MembersConcern

  queue_as :default

  def perform(member_ref, enqueue_related_jobs = false)
    logger.info { "FetchMemberJob fetching member reference #{member_ref}"}

    member_data = fetch_member_api_data(member_ref)
    return nil unless member_data

    party = save_or_update_party(member_data)
    member = save_or_update_member(member_data, party)

    if enqueue_related_jobs
      FetchMemberConstituencyJob.set(wait: rand(30.3600).seconds).perform_later(member_ref)
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


  def save_or_update_party(member_data)
    party_data = member_data.latest_party
    party = Party.find_by_party_ref(party_data.id) || Party.new
    party.update(
      party_ref: party_data.id,
      name: party_data.name,
      abbreviation: party_data.abbreviation,
      background_hex: party_data.background_colour,
      foreground_hex: party_data.foreground_colour,
      lords_main_party: party_data.is_lords_main_party,
      lords_spiritual_party: party_data.is_lords_spiritual_party,
      independent_party: party_data.is_independent_party
    )

    return party
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
