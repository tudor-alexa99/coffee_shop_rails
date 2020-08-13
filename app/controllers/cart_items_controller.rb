class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      flash[:danger] = 'Item added to your cart!'
      redirect_to root_path
    else
      flash[:danger] = 'Could not add item to the basket!'
    end
  end

  private

    def cart_item_params
      params.require(:cart_item).permit(:cart_id, :dish_id, :quantity)
      # todo: fix require
      # params.permit(:cart_id, :dish_id, :quantity)
    end

end
