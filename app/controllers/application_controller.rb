class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :create_empty_cart
  helper_method :current_cart
  
  def create_empty_cart
    session[:cart_id] ||= Cart.create.id
  end
  
  def current_cart
    Cart.find(session[:cart_id])
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
