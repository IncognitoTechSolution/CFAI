require 'test_helper'

class ExpendituresControllerTest < ActionController::TestCase
  setup do
    @expenditure = expenditures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure" do
    assert_difference('Expenditure.count') do
      post :create, expenditure: { amount: @expenditure.amount, candidate_id: @expenditure.candidate_id, date: @expenditure.date, entity_id: @expenditure.entity_id, expen_category_id: @expenditure.expen_category_id, expend_type_id: @expenditure.expend_type_id, expendituretotal: @expenditure.expendituretotal, payment_method_id: @expenditure.payment_method_id, purpose: @expenditure.purpose, report_id: @expenditure.report_id, transaction_id: @expenditure.transaction_id, travel_id: @expenditure.travel_id }
    end

    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should show expenditure" do
    get :show, id: @expenditure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expenditure
    assert_response :success
  end

  test "should update expenditure" do
    patch :update, id: @expenditure, expenditure: { amount: @expenditure.amount, candidate_id: @expenditure.candidate_id, date: @expenditure.date, entity_id: @expenditure.entity_id, expen_category_id: @expenditure.expen_category_id, expend_type_id: @expenditure.expend_type_id, expendituretotal: @expenditure.expendituretotal, payment_method_id: @expenditure.payment_method_id, purpose: @expenditure.purpose, report_id: @expenditure.report_id, transaction_id: @expenditure.transaction_id, travel_id: @expenditure.travel_id }
    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should destroy expenditure" do
    assert_difference('Expenditure.count', -1) do
      delete :destroy, id: @expenditure
    end

    assert_redirected_to expenditures_path
  end
end
