class FetchCommonsDivisionsJob
  include Sidekiq::Job
  include Sidekiq::Throttled::Job

  include CommonsDivisionsConcern

  sidekiq_options queue: :api

  sidekiq_throttle( threshold: { limit: 100, period: 15.minutes } )

  def perform(skip = 0)
    logger.info { "FetchCommonsDivisions fetching commons divisions" }

    divisions_data = fetch_divisions_details(skip)
    return nil unless divisions_data

    save_divisions(divisions_data).compact
  end

  def fetch_divisions_details(skip)
    commons_divisions_api.divisions_search_divisions('json',  query_params: {:'queryParameters.skip' => skip }  )
  rescue ParliamentCommonsVotes::ApiError
    logger.info { "FetchCommonsDivisions API lookup failed for skip value #{skip}: #{e.message}"}
    return nil
  end

  def save_divisions(divisions_data)
    divisions_data.map do |dd|
      next if CommonsDivision.exists?( division_ref: dd.division_id)

      CommonsDivision.create(
        division_ref: dd.division_id,
        division_date: dd.date,
        publication_updated_at: dd.publication_updated,
        number: dd.number,
        deferred: dd.is_deferred,
        evel_type: dd.evel_type,
        evel_country: dd.evel_country,
        title: CGI.unescape(dd.title),
        aye_count: dd.aye_count,
        no_count: dd.no_count,
        double_majority_aye_count: dd.double_majority_aye_count,
        double_majority_no_count: dd.double_majority_no_count
      )
    end
  end
end
