require 'test_helper'

class OfficeSoughtsControllerTest < ActionController::TestCase
  setup do
    @office_sought = office_soughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_soughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_sought" do
    assert_difference('OfficeSought.count') do
      post :create, office_sought: { category: @office_sought.category }
    end

    assert_redirected_to office_sought_path(assigns(:office_sought))
  end

  test "should show office_sought" do
    get :show, id: @office_sought
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_sought
    assert_response :success
  end

  test "should update office_sought" do
    patch :update, id: @office_sought, office_sought: { category: @office_sought.category }
    assert_redirected_to office_sought_path(assigns(:office_sought))
  end

  test "should destroy office_sought" do
    assert_difference('OfficeSought.count', -1) do
      delete :destroy, id: @office_sought
    end

    assert_redirected_to office_soughts_path
  end
end
