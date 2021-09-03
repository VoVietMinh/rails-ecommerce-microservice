class ShoppingCart
    attr_accessor :user_name
    
    def initialize(user_name, items)
        @user_name = user_name
        @items = items
        @total_price = 0
        @items.each do |item|
            @total_price += item.price * item.quantity
        end
    end
end