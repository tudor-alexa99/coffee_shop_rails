class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.image.attach(params[:dish][:image])
    if @dish.save
      redirect_to root_path
    else
      flash[:danger] = 'There was an error in creating a new product!'
      redirect_to root_path
    end
  end

  private

    def dish_params
      params.require(:dish).permit(:title, :category, :price, :image)
    end
end
