class Product
  include Mongoid::Document
  field :name, type: String
  field :category, type: String
  field :summary, type: String
  field :description, type: String
  field :image_file, type: String
  field :price, type: Float

end
