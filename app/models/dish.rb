class Dish < ApplicationRecord
  has_one_attached :image
  has_many :cart_items

  validates :title, presence: true, length: { maximum: 20 }
  validates :category, presence: true, length: { maximum: 30 }
  validates :price, presence: true
  validates :image, presence: true
end
