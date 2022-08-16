class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in
    if current_user.nil?
      redirect_to '/'
    end
  end

  def current_user
    user = User.find_by(id: session[:user_id])
  end
end
