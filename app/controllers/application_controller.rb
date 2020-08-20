class ApplicationController < ActionController::Base
  include SessionsHelper
  include OrdersHelper
  include AdminHelper
end
