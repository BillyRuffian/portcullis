namespace :jobs do
  desc 'Refresh election history for each constituency'
  task :election_history => :environment do 
    puts 'Queuing election history refresh'
    
    Constituency.pluck(:constituency_ref).each_with_index do |ref, idx|
      FetchElectionHistoryJob.set(wait_until: idx.seconds.from_now).perform_later(ref)
    end
  end
end