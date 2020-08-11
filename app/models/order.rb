class Order < ApplicationRecord
  has_many :order_items
  #
  # def subtotal
  #   order_items.collect { |order_item| order_item.valid? (order_item.total_price * order_item.quantity) : 0 }.sum
  # end
end
