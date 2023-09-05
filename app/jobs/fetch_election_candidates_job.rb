class FetchElectionCandidatesJob 
  include Sidekiq::Job
  include Sidekiq::Throttled::Job

  include LocationsConcern
  include PartyJobsConcern

  sidekiq_options queue: :api

  sidekiq_throttle( threshold: { limit: 100, period: 15.minutes } )

  def perform(constituency_ref, election_ref)
    logger.info { "FetchElectionLatest fetching latest election results for #{constituency_ref} / #{election_ref}" }

    constituency = Constituency.includes(:election_results).find_by_constituency_ref(constituency_ref)
    result = ElectionResult.find_by(election_ref:, constituency_id: constituency.id)
    # locations_api.api_location_constituency_id_election_result_election_id_get

    election_detail = fetch_election_detail(constituency_ref, election_ref)
    attach_candidates(result, election_detail.candidates)
  end

  def fetch_election_detail(constituency_ref, election_ref)
    locations_api.api_location_constituency_id_election_result_election_id_get(constituency_ref, election_ref).value
  rescue ParliamentMembers::ApiError => e
    logger.info { "FetchElectionLatest API lookup failed for candidate results for in constituency ref #{constituency_ref} / #{election_ref}: #{e.message}"}
    nil
  end

  def attach_candidates(election, candidate_data)
    election.candidates.destroy_all
    candidate_data.map.with_object(election) do |cd, e|
      Candidate.create(
        election_result: e,
        name: cd.name,
        party: save_or_update_party(cd.party),
        change: cd.result_change.to_f,
        order: cd.rank_order,
        votes: cd.votes,
        share: cd.vote_share
      )
    end
  end
end
