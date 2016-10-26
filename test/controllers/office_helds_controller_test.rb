require 'test_helper'

class OfficeHeldsControllerTest < ActionController::TestCase
  setup do
    @office_held = office_helds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_helds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_held" do
    assert_difference('OfficeHeld.count') do
      post :create, office_held: { category: @office_held.category }
    end

    assert_redirected_to office_held_path(assigns(:office_held))
  end

  test "should show office_held" do
    get :show, id: @office_held
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_held
    assert_response :success
  end

  test "should update office_held" do
    patch :update, id: @office_held, office_held: { category: @office_held.category }
    assert_redirected_to office_held_path(assigns(:office_held))
  end

  test "should destroy office_held" do
    assert_difference('OfficeHeld.count', -1) do
      delete :destroy, id: @office_held
    end

    assert_redirected_to office_helds_path
  end
end
