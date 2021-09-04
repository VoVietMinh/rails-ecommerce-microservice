class OrdersController < ApplicationController
    
    def get_order_by_user_name
        @orders = Order.user_name(params[:user_name])
        json_response(@orders)
    end
    def checkout
        @order = Order.create(order_params)
        json_response(@order, :created)
    end
    def order_params
        params.permit(:user_name, :total_price, :first_name, :last_name, 
        :email_address, :address_line, :country, :state, :zipcode, 
        :card_name, :card_number, :expiration, :cvv, :payment_method)
    end
    
end
