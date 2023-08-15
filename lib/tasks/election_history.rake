namespace :jobs do
  desc 'Refresh election history for each constituency'
  task :election_history => :environment do 
    puts 'Queuing election history refresh'
    
    Constituency.pluck(:constituency_ref).each do |ref|
      FetchElectionHistoryJob.set(wait: rand(30..1200).seconds).perform_later(ref)
    end
  end
end