class CartItemsController < ApplicationController
  def create
    cart = current_cart
    product = Product.find(params[:product_id])

    item = cart.cart_items.find_by(product_id: product.id)

    if item
      item.increment(:quantity)
    else
      item = cart.cart_items.build(product: product, quantity: 1)
    end

    item.save
    redirect_back fallback_location: root_path, notice: 'Producto agregado al carrito.'
  end

  def destroy
    item = current_cart.cart_items.find(params[:id])
    item.destroy
    redirect_back fallback_location: root_path, notice: 'Producto eliminado del carrito.'
  end
end
