$redis = Redis::Namespace.new "basket-redis", :redis => Redis.new(
    url:  Rails.application.config_for(:redis)[:host],
    port: Rails.application.config_for(:redis)[:port],
    db:   Rails.application.config_for(:redis)[:db]
)
