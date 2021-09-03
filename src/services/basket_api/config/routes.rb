Rails.application.routes.draw do
  root 'baskets#show'
  # Baskets
  get 'baskets/:user', to: 'baskets#show'
  post 'baskets/updatebasket', to: 'baskets#update_basket'
  delete 'baskets/:user', to: 'baskets#destroy'
  get 'checkout', to: 'baskets#checkout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
