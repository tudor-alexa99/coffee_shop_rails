class OrdersController < ApplicationController
  def index
    if logged_in?
      @orders = current_user.orders
    end
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    order = Order.find(prams[:id])
    Order.destroy(order.id)
    redirect_to '/orders'
  end

  def create
    @order = Order.new
    @order.user_id = current_user.id
    @order.total_price = params[:total_price]
    @order.finalized = false
    if @order.save
      flash[:success] = 'Your order has been placed!'
      redirect_to '/cart_items'
      current_user.cart.cart_items.delete_all
    else
      flash[:danger] = 'Could not process order!'
      redirect_to '/cart_items'
    end
  end

end
