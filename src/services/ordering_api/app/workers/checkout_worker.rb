class CheckoutWorker
    include Sidekiq::Worker
    sidekiq_options retry: false

    def perform(basket_checkout)
        puts "Checkout #{basket_checkout}"
        basket_checkout_hash = JSON.parse basket_checkout.gsub('=>', ':')
        Order.create(basket_checkout_hash)
    end
    
end