class FetchElectionCandidatesJob < ApplicationJob
  include LocationsConcern
  include PartyJobsConcern

  queue_as :api

  def perform(constituency_ref)
    logger.info { "FetchElectionLatest fetching latest election results for #{constituency_ref}" }
    election_data = fetch_election_latest(constituency_ref)
    return nil unless election_data

    constituency = Constituency.include(:election_results).find_by_constituency_ref(constituency_ref)
    result = ElectionResult.find_by(election_ref: 397, constituency_id: c.id)
    # locations_api.api_location_constituency_id_election_result_election_id_get
  end

  def fetch_election_latest(constituency_ref)
    locations_api.api_location_constituency_id_election_result_latest_get(params[:id]).value
  rescue ParliamentMembers::ApiError => e
    logger.info { "FetchElectionHistory API lookup failed for election results for in constituency ref #{constituency_ref}: #{e.message}"}
    nil
  end
end
