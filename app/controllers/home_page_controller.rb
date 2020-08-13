class HomePageController < ApplicationController
  def index
    @dish = Dish.new
    @dishes = Dish.all
    @cart_items = CartItem.all
  end
end
