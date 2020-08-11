require 'rails_helper'

RSpec.describe SessionsController, type: :request do
  before do
    post users_url, params: {
        user: {name: "Test", email: "test@user.com", password: "password", password_confirmation: "password"}
    }
    delete logout_url
  end

  it 'Get login page' do
    get login_path
    expect(response).to have_http_status(:success)
  end

  it 'Log in successfully' do
    post login_path, params: {session: {email: 'test@user.com', password: 'password' }}
    expect(response).to have_http_status(:redirect)
  end

  it 'Login with wrong information' do
    post login_path, params: { session: { email: '', password: '' } }
    expect(response).to have_http_status(:success)
    expect(flash.empty?).to be false
  end

  it 'login with valid informaation followed by logout' do
    get login_path
    post login_path, params: { session: { email: 'test@user.com', password: 'password' } }

    expect(is_logged_in?).to eq true
    expect(response).to have_http_status(:redirect)
  end
end
