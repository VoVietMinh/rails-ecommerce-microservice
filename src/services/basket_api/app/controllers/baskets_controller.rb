class BasketsController < ApplicationController
 
  def show
    user_name = params[:user]
    cart = $redis.get user_name
    json_response(cart)
  end

  def update_basket
    user_name = cart_params[:user_name]

    items = cart_params[:items].map{|item| ShoppingCartItem.new(item)}
    @cart = ShoppingCart.new(user_name, items)

    $redis.set user_name, @cart.to_json if @cart
    json_response(@cart)
  end

  def destroy
    user_name = params[:user]
    $redis.del user_name
  end

  def checkout
    
  end
  def cart_params
    params.permit(:user_name, {items: [:quantity, :color, :price, :product_id, :product_name]})
  end
end
