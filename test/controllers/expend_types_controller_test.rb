require 'test_helper'

class ExpendTypesControllerTest < ActionController::TestCase
  setup do
    @expend_type = expend_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expend_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expend_type" do
    assert_difference('ExpendType.count') do
      post :create, expend_type: { type: @expend_type.type }
    end

    assert_redirected_to expend_type_path(assigns(:expend_type))
  end

  test "should show expend_type" do
    get :show, id: @expend_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expend_type
    assert_response :success
  end

  test "should update expend_type" do
    patch :update, id: @expend_type, expend_type: { type: @expend_type.type }
    assert_redirected_to expend_type_path(assigns(:expend_type))
  end

  test "should destroy expend_type" do
    assert_difference('ExpendType.count', -1) do
      delete :destroy, id: @expend_type
    end

    assert_redirected_to expend_types_path
  end
end
