class Admin::BaseController < ApplicationController
  before_action :check_logged_in_as_admin

  layout 'admin'

  def index
  end

end
