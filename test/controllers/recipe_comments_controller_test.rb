require 'test_helper'

class RecipeCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_comment = recipe_comments(:one)
  end

  test "should get index" do
    get recipe_comments_url, as: :json
    assert_response :success
  end

  test "should create recipe_comment" do
    assert_difference('RecipeComment.count') do
      post recipe_comments_url, params: { recipe_comment: { description: @recipe_comment.description, recipe_id: @recipe_comment.recipe_id, user_id: @recipe_comment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_comment" do
    get recipe_comment_url(@recipe_comment), as: :json
    assert_response :success
  end

  test "should update recipe_comment" do
    patch recipe_comment_url(@recipe_comment), params: { recipe_comment: { description: @recipe_comment.description, recipe_id: @recipe_comment.recipe_id, user_id: @recipe_comment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_comment" do
    assert_difference('RecipeComment.count', -1) do
      delete recipe_comment_url(@recipe_comment), as: :json
    end

    assert_response 204
  end
end
