module PartyJobsConcern
  extend ActiveSupport::Concern 

  def save_or_update_party(party_data)
    return nil unless party_data && party_data.id

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
end