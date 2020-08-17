class HomePageController < ApplicationController
  def index
    @dish = Dish.new
    @dishes = Dish.all
    if logged_in?
      @cart_items = current_user.cart.cart_items
    end
  end
end
