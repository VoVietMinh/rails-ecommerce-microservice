Rails.application.routes.draw do
  root 'products#index'

  # Products
  get "/products", to: "products#index"
  get "/products/getproductbyname/:name", to: "products#get_product_by_name"
  get "/products/getproductbycategory/:category", to: "products#get_product_by_category"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
