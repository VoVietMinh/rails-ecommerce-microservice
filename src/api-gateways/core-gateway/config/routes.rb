Rails.application.routes.draw do

  get 'status', to: 'gateways#status'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  DynamicRouter.load
end
