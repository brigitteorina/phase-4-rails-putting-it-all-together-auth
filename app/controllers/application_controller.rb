class ApplicationController < ActionController::API
  include ActionController::Cookies

  def current_user
    current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id].present?
  end
end