class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products
  end
  
  def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
  end
end
