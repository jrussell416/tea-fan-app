class LoginsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboards_path
    else
      flash[:alert] = "invalid log in information, please try again"
      render :new
    end
  end
end
