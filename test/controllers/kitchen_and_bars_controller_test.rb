require 'test_helper'

class KitchenAndBarsControllerTest < ActionController::TestCase
  setup do
    @kitchen_and_bar = kitchen_and_bars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitchen_and_bars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitchen_and_bar" do
    assert_difference('KitchenAndBar.count') do
      post :create, kitchen_and_bar: {  }
    end

    assert_redirected_to kitchen_and_bar_path(assigns(:kitchen_and_bar))
  end

  test "should show kitchen_and_bar" do
    get :show, id: @kitchen_and_bar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitchen_and_bar
    assert_response :success
  end

  test "should update kitchen_and_bar" do
    patch :update, id: @kitchen_and_bar, kitchen_and_bar: {  }
    assert_redirected_to kitchen_and_bar_path(assigns(:kitchen_and_bar))
  end

  test "should destroy kitchen_and_bar" do
    assert_difference('KitchenAndBar.count', -1) do
      delete :destroy, id: @kitchen_and_bar
    end

    assert_redirected_to kitchen_and_bars_path
  end
end
