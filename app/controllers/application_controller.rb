class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  before_action :set_client
  
  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def set_client
  	@current_client = 'test'
  end
end
