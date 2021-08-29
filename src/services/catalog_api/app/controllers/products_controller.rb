class ProductsController < ApplicationController
  def index
    @products = Product.where(nil)
    json_response(@products)
  end

  def show
    @product = Product.find(params[:id])
    json_response(@product)
  end

  def get_product_by_name
    @products = Product.where(name: params[:name])
    json_response(@products)
  end

  def get_product_by_category
    @products = Product.where(name: params[:category])
    json_response(@products)
  end
end
