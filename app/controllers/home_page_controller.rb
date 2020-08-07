class HomePageController < ApplicationController
  def index
    @dish = Dish.new
    @dishes = Dish.all
  end
end
