Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  
  get 'orders/:user_name', to: 'orders#get_order_by_user_name'
  post 'orders/checkout', to: 'orders#checkout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
