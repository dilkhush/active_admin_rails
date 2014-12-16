class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_admin_user
      admin_root_url
    else
      root_url
    end
  end

  def authenticate_admin_user!
    redirect_to '/' and return if user_signed_in? && !current_user.is_admin?
    authenticate_user!
  end

  def current_admin_user
    return nil if user_signed_in? && !current_user.is_admin?
    current_user
  end
  helper_method :current_user

  def new_session_path(scope)
    new_user_session_path
  end
  
end
