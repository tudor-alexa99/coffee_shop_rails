class CartsController < ApplicationController
  def show
  end

  def add_to_cart
    @cart_item = CartItem.new(cart_item_params)
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:cart_id, :dish_id, :quantity)
  end
end
