class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :dish

  def total_price
    # todo: Find a way to take the dish price and multiply it with the quantity
    # Dish.find_by(id: dish.id).price * quantity
  end
end
