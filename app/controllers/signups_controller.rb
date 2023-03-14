class SignupsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboards_path
    else
      render :new
    end
  end

  private

  def user_params
    params.required(:user).permit(:user_name, :email, :password, :password_confirmation)
  end
end
