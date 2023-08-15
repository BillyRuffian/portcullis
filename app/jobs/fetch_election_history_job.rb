class FetchElectionHistoryJob < ApplicationJob
  include LocationsConcern
  include PartyJobsConcern

  queue_as :default

  def perform(constituency_ref, enqueue_related_jobs = false)
    logger.info { "FetchElectionHistory fetching latest election results for #{constituency_ref}" }
    election_data = fetch_election_history(constituency_ref)
    return nil unless election_data

    constituency = Constituency.find_by_constituency_ref(constituency_ref)
    return nil unless constituency

    save_or_update_election_results(constituency, election_data)
  end

  def fetch_election_history(constituency_ref)
    locations_api.api_location_constituency_id_election_results_get(constituency_ref).value
  rescue ParliamentMembers::ApiError => e
    logger.info { "FetchElectionHistory API lookup failed for election results for in constituency ref #{constituency_ref}: #{e.message}"}
    nil
  end

  def save_or_update_election_results(constituency, election_data)
    election_data.map do |ed|
      party = save_or_update_party(ed.winning_party)
      er = ElectionResult.find_or_create_by(constituency: constituency, election_ref: ed.election_id)
      er.update(
        election_date: ed.election_date,
        general_election: ed.is_general_election,
        title: ed.election_title,
        notional: ed.is_notional,
        result: ed.result,
        turnout: ed.turnout,
        electorate: ed.electorate,
        majority: ed.majority,
        party:
      )
    end
  end
end
