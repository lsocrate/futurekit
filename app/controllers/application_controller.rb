class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  include SessionsHelper
  
  def authenticate_admin_user!
    redirect_to '/' and return if !isAdmin?
  end 

  def current_admin_user
    return nil if !isAdmin?
    current_user
  end 

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

end
