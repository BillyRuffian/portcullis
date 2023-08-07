class RefreshMembersJob < ApplicationJob
  queue_as :default

  def perform(start: 1, batch: 10)
    members = fetch_members_batch(start...(start+batch))
    members.each do |member|
      upsert_party(member.latest_party)
      
    end
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
      party_id: party.id,
      name: party.name,
      abbreviation: party.abbreviation,
      background_hex: party.background_colour,
      foreground_hex: party.foreground_colour,
      ###### <<
    }, unique_by: :party_id)
  end
end
