class AdminController < ApplicationController
  before_action :is_admin?


  def index
    @users = User.all
  end

  # it will call before every action on this controller
  def is_admin?
    # check if user is a admin
    # if not admin then redirect to where ever you want
    redirect_to root_path unless current_user.admin?
  end


end
