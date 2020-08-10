require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @valid_user = User.new(name: 'Test', email: 'user@test.com', password: 'password', password_confirmation: 'password')
    @invalid_user = User.new(name: 'invalid', email: 'invalid@test.com', password: 'invalid', password_confirmation: 'invalid_confirmation')
  end

  it 'Check for valid user' do
    expect(@valid_user.valid?).to eq true
  end

  it 'Check for invalid user' do
    expect(@invalid_user.valid?).to eq false
  end

  it 'Check for long name validation' do
    # first check if it's ok
    expect(@valid_user.valid?).to eq true
    # change the name
    @valid_user.name = 'S' * 100
    # test
    expect(@valid_user.valid?).to eq false
    # change the name back to a valid state
    @valid_user.name = 'Test'
  end

  it 'Check for short email validation' do
    expect(@valid_user.valid?).to eq true
    @valid_user.email = 'a@a.c' # this is a valid email format, but it is too short
    expect(@valid_user.valid?).to eq false

    @valid_user.email = "user@test.com"
  end

  it 'Check for wrong email format validation' do
    expect(@valid_user.valid?).to eq true
    @valid_user.email = 'wrong_format'
    expect(@valid_user.valid?).to eq false

    @valid_user.email = "user@test.com"
  end
end
