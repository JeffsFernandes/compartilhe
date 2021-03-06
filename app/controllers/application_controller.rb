class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    params = [:name, :city]
    params.each {|param| devise_parameter_sanitizer.for(:sign_up) << param }
  end

  def index
    redirect_to skills_path if user_signed_in?
  end
end