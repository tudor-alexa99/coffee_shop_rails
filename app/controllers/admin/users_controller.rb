class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User removed successfully!"
    redirect_to admin_users_path
  end
end
