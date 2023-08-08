class RefreshMembersJob < ApplicationJob
  queue_as :default

  def perform(start: 1, batch: 10, upto: 5_000)
    members = fetch_members_batch(start...(start+batch))
    members.each do |member|
      upsert_party(member.latest_party)
      upsert_member(member)
    end

    RefreshMembersJob.set(wait: 10.seconds).perform_later(start: start+batch-1, batch:, upto:) if start < upto
    members.count
  end

  private

  def fetch_members_batch(mp_id_range)
    api = ParliamentMembers::MembersApi.new

    Sync do |parent|
      mp_id_range.map do |id|
        parent.async do
          begin
            api.api_members_id_get(id)
          rescue ParliamentMembers::ApiError => e
            nil
          end
        end
      end.map(&:wait).compact.map(&:value)
    end
  end

  def upsert_party(party)
    Party.upsert({
      party_ref: party.id,
      name: party.name,
      abbreviation: party.abbreviation,
      background_hex: party.background_colour,
      foreground_hex: party.foreground_colour,
      lords_main_party: party.is_lords_main_party,
      lords_spiritual_party: party.is_lords_spiritual_party,
      independent_party: party.is_independent_party
    }, unique_by: :party_ref)
  end

  def upsert_member(member)
    Member.upsert({
      member_ref: member.id,
      party_id: parties(member.latest_party.id).id,
      house: member.latest_house_membership.house,
      list_as: member.name_list_as,
      display_as: member.name_display_as,
      full_title: member.name_full_title,
      address_as: member.name_address_as,
      gender: member.gender,
      start_date: member.latest_house_membership.membership_start_date,
      end_date: member.latest_house_membership.membership_end_date,
      end_reason: member.latest_house_membership.membership_end_reason
    }, unique_by: :member_ref)
  end

  def parties(party_ref)
    @parties ||= Hash.new { |h, k| h[k] = Party.find_by_party_ref(k.to_i) } 
    @parties[party_ref]
  end
end
