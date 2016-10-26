require 'test_helper'

class PrefixesControllerTest < ActionController::TestCase
  setup do
    @prefix = prefixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prefixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prefix" do
    assert_difference('Prefix.count') do
      post :create, prefix: { prefix: @prefix.prefix }
    end

    assert_redirected_to prefix_path(assigns(:prefix))
  end

  test "should show prefix" do
    get :show, id: @prefix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prefix
    assert_response :success
  end

  test "should update prefix" do
    patch :update, id: @prefix, prefix: { prefix: @prefix.prefix }
    assert_redirected_to prefix_path(assigns(:prefix))
  end

  test "should destroy prefix" do
    assert_difference('Prefix.count', -1) do
      delete :destroy, id: @prefix
    end

    assert_redirected_to prefixes_path
  end
end
