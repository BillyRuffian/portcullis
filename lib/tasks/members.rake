namespace :jobs do
  desc 'Refresh members'
  task :members, [:start_ref, :end_ref] => [:environment] do |_t, args|
    args.with_defaults(start_ref: 1, end_ref: 5000)
    puts "Queuing member refresh from #{args.start_ref} to #{args.end_ref}"
    
    (args.start_ref.to_i..args.end_ref.to_i).each do |ref|
      FetchMemberJob.set(wait: rand(5..1200).seconds).perform_later(ref, true)
    end
  end
end