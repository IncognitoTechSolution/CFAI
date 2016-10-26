require 'test_helper'

class FilerTypesControllerTest < ActionController::TestCase
  setup do
    @filer_type = filer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filer_type" do
    assert_difference('FilerType.count') do
      post :create, filer_type: { type: @filer_type.type }
    end

    assert_redirected_to filer_type_path(assigns(:filer_type))
  end

  test "should show filer_type" do
    get :show, id: @filer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filer_type
    assert_response :success
  end

  test "should update filer_type" do
    patch :update, id: @filer_type, filer_type: { type: @filer_type.type }
    assert_redirected_to filer_type_path(assigns(:filer_type))
  end

  test "should destroy filer_type" do
    assert_difference('FilerType.count', -1) do
      delete :destroy, id: @filer_type
    end

    assert_redirected_to filer_types_path
  end
end
