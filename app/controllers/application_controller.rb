class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	# helper_method :current_user

  # private
  # def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:cpfcnpj, :tipo, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:cpfcnpj, :tipo, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:cpfcnpj, :tipo, :email, :password, :password_confirmation, :current_password) }
  end
end
