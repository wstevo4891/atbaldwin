require 'test_helper'

class BridalRegistriesControllerTest < ActionController::TestCase
  setup do
    @bridal_registry = bridal_registries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bridal_registries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bridal_registry" do
    assert_difference('BridalRegistry.count') do
      post :create, bridal_registry: {  }
    end

    assert_redirected_to bridal_registry_path(assigns(:bridal_registry))
  end

  test "should show bridal_registry" do
    get :show, id: @bridal_registry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bridal_registry
    assert_response :success
  end

  test "should update bridal_registry" do
    patch :update, id: @bridal_registry, bridal_registry: {  }
    assert_redirected_to bridal_registry_path(assigns(:bridal_registry))
  end

  test "should destroy bridal_registry" do
    assert_difference('BridalRegistry.count', -1) do
      delete :destroy, id: @bridal_registry
    end

    assert_redirected_to bridal_registries_path
  end
end
