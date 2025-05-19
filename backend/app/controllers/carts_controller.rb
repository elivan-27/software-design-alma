class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  private

  def current_cart
    if session[:cart_id]
      Cart.find_by(id: session[:cart_id]) || create_cart
    else
      create_cart
    end
  end

  def create_cart
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
