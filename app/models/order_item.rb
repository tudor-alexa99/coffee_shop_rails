class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :dish

  validates :order_id, presence: true
  validates :dish_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
