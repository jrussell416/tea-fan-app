class ApplicationController < ActionController::Base
  def current_user_name
    User.find_by(id: session[:user_id]).user_name
  end
  helper_method :current_user_name

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
