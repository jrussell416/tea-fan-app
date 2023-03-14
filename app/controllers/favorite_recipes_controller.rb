class FavoriteRecipesController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @fave_recipes = @user.favorites
  end

  def show
  end
end
