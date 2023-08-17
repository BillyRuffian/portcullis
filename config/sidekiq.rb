Sidekiq.configure_server do |config|
  config.capsule("throttled") do |cap|
    cap.concurrency = 1
    cap.queues = %w[api]
  end
end