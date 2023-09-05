namespace :jobs do
  desc 'Refresh election candidates for each election and each constituency'
  task :election_candidates => :environment do 
    puts 'Queuing election candidates refresh for elections with no stored candidates'

    ElectionResult.includes(:constituency, :candidates)
                  .where(candidates: {election_result_id: nil} )
                  .each { |er| FetchElectionCandidatesJob.perform_async(er.constituency.constituency_ref, er.election_ref) }
  end
end