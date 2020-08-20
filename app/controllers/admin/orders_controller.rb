class Admin::OrdersController < ApplicationController
  before_action :check_logged_in_as_admin

  layout 'admin'

  def index
      @orders = Order.all
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
