require 'test_helper'

class CreditsControllerTest < ActionController::TestCase
  setup do
    @credit = credits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit" do
    assert_difference('Credit.count') do
      post :create, credit: { amount: @credit.amount, date: @credit.date, description: @credit.description, entity_id: @credit.entity_id, report_id: @credit.report_id, return: @credit.return, returntotal: @credit.returntotal, transaction_id: @credit.transaction_id }
    end

    assert_redirected_to credit_path(assigns(:credit))
  end

  test "should show credit" do
    get :show, id: @credit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit
    assert_response :success
  end

  test "should update credit" do
    patch :update, id: @credit, credit: { amount: @credit.amount, date: @credit.date, description: @credit.description, entity_id: @credit.entity_id, report_id: @credit.report_id, return: @credit.return, returntotal: @credit.returntotal, transaction_id: @credit.transaction_id }
    assert_redirected_to credit_path(assigns(:credit))
  end

  test "should destroy credit" do
    assert_difference('Credit.count', -1) do
      delete :destroy, id: @credit
    end

    assert_redirected_to credits_path
  end
end
