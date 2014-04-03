class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('/recipes/index.html.erb')
  end

  def create
    params[:recipe][:slug] = params[:recipe][:name].parameterize
    @recipe = Recipe.create(params[:recipe])

    if @recipe.save
      redirect_to("/recipes")
    else
      render('/recipes/index.html.erb')
    end
  end

  def show
    @recipe = Recipe.find_by(:slug => params[:slug])
    render('/recipes/show.html.erb')
  end


  def update
    params[:recipe][:slug] = params[:recipe][:name].parameterize
    @recipe = Recipe.find_by(:slug => params[:slug])

    @recipe.update(params[:recipe])

    if @recipe.update(params[:recipe])
      redirect_to("/recipes/#{@recipe.slug}")
    else
      render('/recipes/show.html.erb')
    end
  end
end
