class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :dish

  validates :cart_id, presence: true
  validates :dish_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
