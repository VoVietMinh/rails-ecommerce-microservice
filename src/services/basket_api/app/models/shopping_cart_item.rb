class ShoppingCartItem
    attr_accessor :quantity, :color, :price, :product_id, :product_name
    
    def initialize(options)
      @quantity = options[:quantity]
      @color = options[:color]
      @price = options[:price]
      @product_id = options[:product_id]
      @product_name = options[:product_name]
    end
end