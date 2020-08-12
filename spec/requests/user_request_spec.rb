RSpec.describe UsersController, type: :request do
  before do
    @user = {name: "test", email: "test@user.com", password: "password", confirmation: "password"}
  end

  it 'Get sign up page' do
    get signup_url
    expect(response).to have_http_status(:success)
  end

  it 'Sign up successfully' do
    post users_url, params: {
        user: @user
    }
    expect(response).to have_http_status(:success)
  end

  it 'Sign up failure' do
    @user.password_confirmation = 'wrong_pass'
    post users_url, params: {
        user: @user
    }
    expect(response).to have_http_status(:success)
    expect(flash.empty).to be false
  end
end
