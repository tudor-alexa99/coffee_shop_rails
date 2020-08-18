class Admin::OrdersController < ApplicationController
  layout 'admin'

  def index
    if is_admin?
      @orders = Order.all
    end
  end
end