class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe_name = params[:recipe][:name]
    recipe_type = params[:recipe][:recipe_type]
    recipe_instructions = params[:recipe][:instructions]
    recipe_site = params[:recipe][:recipe_url]

    Recipe.create(name: recipe_name, recipe_type: recipe_type, instructions: recipe_instructions, recipe_url: recipe_site)
    redirect_to recipes_path
  end

  def edit
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end

  def update
    @recipe = Recipe.find(params[:id])
    new_recipe_name = params[:recipe][:name]
    new_recipe_type = params[:recipe][:recipe_type]
    new_recipe_instructions = params[:recipe][:instructions]
    new_recipe_site = params[:recipe][:recipe_url]

    @recipe.update(name: new_recipe_name, recipe_type: new_recipe_type, instructions: new_recipe_instructions, recipe_url: new_recipe_site)
    redirect_to recipes_path
  end

  def destroy
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    @recipe.destroy
    redirect_to recipes_path
  end

  def favorite
    @recipe = Recipe.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @recipe
      redirect_to favorite_recipes_path	

    elsif type == "unfavorite"
      current_user.favorites.delete(@recipe)
      redirect_to favorite_recipes_path

    else
      redirect_to recipes_path

    end
  end
end
