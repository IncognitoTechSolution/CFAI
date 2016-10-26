require 'test_helper'

class EntityTypesControllerTest < ActionController::TestCase
  setup do
    @entity_type = entity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entity_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity_type" do
    assert_difference('EntityType.count') do
      post :create, entity_type: { type: @entity_type.type }
    end

    assert_redirected_to entity_type_path(assigns(:entity_type))
  end

  test "should show entity_type" do
    get :show, id: @entity_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity_type
    assert_response :success
  end

  test "should update entity_type" do
    patch :update, id: @entity_type, entity_type: { type: @entity_type.type }
    assert_redirected_to entity_type_path(assigns(:entity_type))
  end

  test "should destroy entity_type" do
    assert_difference('EntityType.count', -1) do
      delete :destroy, id: @entity_type
    end

    assert_redirected_to entity_types_path
  end
end
