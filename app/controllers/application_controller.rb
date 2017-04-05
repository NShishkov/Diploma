class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :require_login
  before_action :take_profile
  
  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def have_role?
    if current_user.role_users.count != 0
      return true
    else
      return false
    end
  end

  def take_profile
    if current_user != nil
    	if @current_user.roles.first.name == 'new_user' and 
    			@current_user.roles.first.name == 'admin'
    		@profile = nil
    		@role = @current_user.roles.first.name
    	else
    		@profile = @current_user.role_users.first.us_role
    		@role = @current_user.roles.first.name
    	end
    end
  end

  /def set_role
    if current_user != nil
      if have_role?
        @current_role = current_user.roles.first.name
      else
        @current_role = "Пользователь"
      end
    end
  	#@current_role = current_user.role_users.first.us_role_type if current_user != nil
  end/
end
