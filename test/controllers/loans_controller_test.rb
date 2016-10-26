require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { amount: @loan.amount, amountguaranteed: @loan.amountguaranteed, candidate_id: @loan.candidate_id, date: @loan.date, description: @loan.description, entity_id: @loan.entity_id, interestrate: @loan.interestrate, loantotal: @loan.loantotal, maturitydate: @loan.maturitydate, outofstatepac: @loan.outofstatepac, pacid: @loan.pacid, personalfund: @loan.personalfund, report_id: @loan.report_id, transaction_id: @loan.transaction_id }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { amount: @loan.amount, amountguaranteed: @loan.amountguaranteed, candidate_id: @loan.candidate_id, date: @loan.date, description: @loan.description, entity_id: @loan.entity_id, interestrate: @loan.interestrate, loantotal: @loan.loantotal, maturitydate: @loan.maturitydate, outofstatepac: @loan.outofstatepac, pacid: @loan.pacid, personalfund: @loan.personalfund, report_id: @loan.report_id, transaction_id: @loan.transaction_id }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
