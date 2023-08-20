
namespace :jobs do
  desc 'Populate the commons divisions'
  task :commons_divisions => :environment do 
    puts 'Fetching commons divisions since the most recent stored'
    most_recent_division_ref = CommonsDivision.maximum(:division_ref)
    division = CommonsDivision.find_by_division_ref(most_recent_division_ref) 
    from_date = division&.division_date&.iso8601

    api = ParliamentCommonsVotes::DivisionsApi.new
    date_params = { :'queryParameters.startDate' => from_date }
    total_results = api.divisions_search_total_results( 'json', query_params: date_params )
    pages = (total_results / 25.0).ceil

    pages.times do |page|
      FetchCommonsDivisionsJob.set(wait_until: page.seconds.from_now).perform_later(page * 25)
    end
  end
end