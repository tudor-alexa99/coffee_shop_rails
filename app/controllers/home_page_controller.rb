class HomePageController < ApplicationController
  def index
  end

  def create
    debugger
    @dish = Dish.new(dish_params)
    @dish.image.attach(params[:dish][:image])
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :category, :price, :image)
  end
end
