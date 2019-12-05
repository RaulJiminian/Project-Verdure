class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  before_action :authorize_request, except: %i[index show index_by_user]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes, include: :user
  end

  # Get /users/:user_id/recipes
  def index_by_user
    @user = User.find(params[:user_id])
    recipes = @user.recipes
    render json: recipes, include: :user, status: :ok
  end

  # GET /recipes/1
  def show
    render json: @recipe, include: :user
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # /users/:user_id/recipes
  def create_by_user
    user = User.find(params[:user_id])
    recipe = user.recipes.new(recipe_params)
    if recipe.save
      render json: recipe, include: :user, status: :created
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:image_url, :title, :description, :ingredients, :prep, :user_id)
    end
end
