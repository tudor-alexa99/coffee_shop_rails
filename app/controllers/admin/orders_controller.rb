class Admin::OrdersController < ApplicationController
  layout 'admin'

  def index
    if is_admin?
      @orders = Order.all
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.finalized = true
    @order.save
    redirect_to admin_orders_path
  end

  def show
  end
end
