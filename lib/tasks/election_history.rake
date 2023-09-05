namespace :jobs do
  desc 'Refresh election history for each constituency'
  task :election_history => :environment do 
    puts 'Queuing election history refresh'
    
    Constituency.pluck(:constituency_ref).each_with_index do |ref, idx|
      FetchElectionHistoryJob.perform_async(ref)
    end
  end
end