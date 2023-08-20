
namespace :jobs do
  desc 'Populate the commons divisions votes'
  task :commons_division_votes => :environment do 
    puts 'Fetching commons division votes'
    
    divisions = CommonsDivision.where.missing(:commons_votes)

    divisions.each_with_index do |div, idx|
      FetchCommonsDivisionVotesJob.set(wait_until: idx.seconds.from_now).perform_later(div.division_ref)
    end
  end
end