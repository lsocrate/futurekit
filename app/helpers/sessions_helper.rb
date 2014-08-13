module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
 
  def isAdmin?
    !current_user.nil? && current_user.admin
  end

  def signed_in_user
    unless signed_in?
       # store_location # later
       flash[:danger] = t :signin
       redirect_to login_url
    end
  end

  def signed_in?
    !current_user.nil?
  end
 
  def current_user=(user)
    @current_user = user
  end

  def current_user?(user)
    user == current_user
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

end