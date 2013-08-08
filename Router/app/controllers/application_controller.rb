class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user #(params???)
    @current_user ||= User.find_by_session_token(params[:token])

  end

  def logged_in?
    !!@current_user
  end

end
