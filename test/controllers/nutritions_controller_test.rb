require 'test_helper'

class NutritionsControllerTest < ActionController::TestCase
  setup do
    @nutrition = nutritions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutritions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrition" do
    assert_difference('Nutrition.count') do
      post :create, nutrition: { brand: @nutrition.brand, character: @nutrition.character, function: @nutrition.function, name: @nutrition.name, precaution: @nutrition.precaution }
    end

    assert_redirected_to nutrition_path(assigns(:nutrition))
  end

  test "should show nutrition" do
    get :show, id: @nutrition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrition
    assert_response :success
  end

  test "should update nutrition" do
    patch :update, id: @nutrition, nutrition: { brand: @nutrition.brand, character: @nutrition.character, function: @nutrition.function, name: @nutrition.name, precaution: @nutrition.precaution }
    assert_redirected_to nutrition_path(assigns(:nutrition))
  end

  test "should destroy nutrition" do
    assert_difference('Nutrition.count', -1) do
      delete :destroy, id: @nutrition
    end

    assert_redirected_to nutritions_path
  end
end
