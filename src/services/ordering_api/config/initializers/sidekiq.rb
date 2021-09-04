redis_conn = proc {
  Redis.new(
    url: Rails.application.config_for(:sidekiq)[:host],
    port: Rails.application.config_for(:sidekiq)[:port],
    db: Rails.application.config_for(:sidekiq)[:db]
  )
}
Sidekiq::Extensions.enable_delay!
Redis.exists_returns_integer = false

Sidekiq.configure_client do |config|
  config.redis = ConnectionPool.new(size: 5, &redis_conn)
end

Sidekiq.configure_server do |config|
  config.redis = ConnectionPool.new(size: 50, &redis_conn)
end
