require 'rails_helper'

RSpec.describe Dish, type: :model do
  before do
    @dish = Dish.new(title: 'Dish', category: 'Specialty', price: 10)
    @dish.image.attach(io: File.open(Rails.root.join('spec', 'images', 'dish_2.png')), filename: 'dish_2.png')
  end

  it 'Check valid dish' do
    expect(@dish.valid?).to eq true
  end

  it 'Check empty title' do
    @dish.title = ""
    expect(@dish.valid?).to eq false
    @dish.title = "Dish"
  end

  it 'Check empty category' do
    @dish.category = ""
    expect(@dish.valid?).to eq false
    @dish.category = 'Specialty'
  end

  it 'Check empty price' do
    @dish.price = ""
    expect(@dish.valid?).to eq false
    @dish.price = 10
  end

  it 'Check empty image' do
    @empty_dish = Dish.new(title: "Empty", category: "Dish", price: 0)
    expect(@empty_dish.valid?).to eq false
  end
end
