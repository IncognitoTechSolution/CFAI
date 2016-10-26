require 'test_helper'

class NonPoliticalExpendituresControllerTest < ActionController::TestCase
  setup do
    @non_political_expenditure = non_political_expenditures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_political_expenditures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_political_expenditure" do
    assert_difference('NonPoliticalExpenditure.count') do
      post :create, non_political_expenditure: { amount: @non_political_expenditure.amount, date: @non_political_expenditure.date, entity_id: @non_political_expenditure.entity_id, expenditure_category_id: @non_political_expenditure.expenditure_category_id, npetotal: @non_political_expenditure.npetotal, purpose: @non_political_expenditure.purpose, report_id: @non_political_expenditure.report_id, transaction_id: @non_political_expenditure.transaction_id }
    end

    assert_redirected_to non_political_expenditure_path(assigns(:non_political_expenditure))
  end

  test "should show non_political_expenditure" do
    get :show, id: @non_political_expenditure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_political_expenditure
    assert_response :success
  end

  test "should update non_political_expenditure" do
    patch :update, id: @non_political_expenditure, non_political_expenditure: { amount: @non_political_expenditure.amount, date: @non_political_expenditure.date, entity_id: @non_political_expenditure.entity_id, expenditure_category_id: @non_political_expenditure.expenditure_category_id, npetotal: @non_political_expenditure.npetotal, purpose: @non_political_expenditure.purpose, report_id: @non_political_expenditure.report_id, transaction_id: @non_political_expenditure.transaction_id }
    assert_redirected_to non_political_expenditure_path(assigns(:non_political_expenditure))
  end

  test "should destroy non_political_expenditure" do
    assert_difference('NonPoliticalExpenditure.count', -1) do
      delete :destroy, id: @non_political_expenditure
    end

    assert_redirected_to non_political_expenditures_path
  end
end
