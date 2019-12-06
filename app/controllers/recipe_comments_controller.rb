class RecipeCommentsController < ApplicationController
  before_action :set_recipe_comment, only: [:show, :update, :destroy]
  before_action :authorize_request, except: %i[index show]

  # GET /recipe_comments
  def index
    @recipe_comments = RecipeComment.all

    render json: @recipe_comments
  end

  # GET /recipe_comments/1
  def show
    render json: @recipe_comment
  end

  # POST /recipe_comments
  def create
    @recipe_comment = RecipeComment.new(recipe_comment_params)

    if @recipe_comment.save
      render json: @recipe_comment, status: :created
    else
      render json: @recipe_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_comments/1
  def update
    if @recipe_comment.update(recipe_comment_params)
      render json: @recipe_comment
    else
      render json: @recipe_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_comments/1
  def destroy
    @recipe_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_comment
      @recipe_comment = RecipeComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_comment_params
      params.require(:recipe_comment).permit(:comment, :user_id, :recipe_id)
    end
end
