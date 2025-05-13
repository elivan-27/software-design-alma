class HomeController < ApplicationController
  def index
    @categories = Category.all
    @latest_products = Product.order(created_at: :desc).limit(4)
  end
end
