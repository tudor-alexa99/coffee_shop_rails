module AdminHelper
  private

    def check_logged_in_as_admin
      unless logged_in? && is_admin?
        flash[:danger] = "You must be logged in as an admin to have access!"
        redirect_to login_path
      end
    end
end
