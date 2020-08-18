class OrderItemsController < ApplicationController
  def new
    @order_item = OrderItem.new
  end

  def destroy
    order_item = OrderItem.find(params[:id])
    OrderItem.destroy(order_item)
    redirect_to '/orders'
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.order_id = current_user.order.id
    if @order_item.save
      flash[:success] = 'Product added to the order!'
    else
      flash[:danger] = 'Could not add product to the order!'
    end
  end

  private

    def order_item_params
      params.require(:order_item).permit(:dish_id, :quantity)
    end
end
