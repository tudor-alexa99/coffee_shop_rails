class CartItemsController < ApplicationController
  def index
    if logged_in?
      @cart_items = current_user.cart.cart_items
    end
  end

  def new
    @cart_item = CartItem.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.cart_id = current_user.cart.id
    if @cart_item.save
      flash[:success] = "Item added to your cart!"
      redirect_to root_path
    else
      flash[:danger] = 'Could not add item to the basket!'
      redirect_to root_path
    end
  end

  private

    def cart_item_params
      params.require(:cart_item).permit(:dish_id, :quantity)
    end
end
