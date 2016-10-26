require 'test_helper'

class ReportSubtotalsControllerTest < ActionController::TestCase
  setup do
    @report_subtotal = report_subtotals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_subtotals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_subtotal" do
    assert_difference('ReportSubtotal.count') do
      post :create, report_subtotal: { coh_payment_id: @report_subtotal.coh_payment_id, credit_id: @report_subtotal.credit_id, expenditure_category_id: @report_subtotal.expenditure_category_id, expenditure_id: @report_subtotal.expenditure_id, investment_purchase_id: @report_subtotal.investment_purchase_id, loan_id: @report_subtotal.loan_id, monetary_contribution_id: @report_subtotal.monetary_contribution_id, non_monetary_contribution_id: @report_subtotal.non_monetary_contribution_id, non_political_expenditure_id: @report_subtotal.non_political_expenditure_id, pledge_id: @report_subtotal.pledge_id, report_id: @report_subtotal.report_id, unpaid_incurred_obligation_id: @report_subtotal.unpaid_incurred_obligation_id }
    end

    assert_redirected_to report_subtotal_path(assigns(:report_subtotal))
  end

  test "should show report_subtotal" do
    get :show, id: @report_subtotal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_subtotal
    assert_response :success
  end

  test "should update report_subtotal" do
    patch :update, id: @report_subtotal, report_subtotal: { coh_payment_id: @report_subtotal.coh_payment_id, credit_id: @report_subtotal.credit_id, expenditure_category_id: @report_subtotal.expenditure_category_id, expenditure_id: @report_subtotal.expenditure_id, investment_purchase_id: @report_subtotal.investment_purchase_id, loan_id: @report_subtotal.loan_id, monetary_contribution_id: @report_subtotal.monetary_contribution_id, non_monetary_contribution_id: @report_subtotal.non_monetary_contribution_id, non_political_expenditure_id: @report_subtotal.non_political_expenditure_id, pledge_id: @report_subtotal.pledge_id, report_id: @report_subtotal.report_id, unpaid_incurred_obligation_id: @report_subtotal.unpaid_incurred_obligation_id }
    assert_redirected_to report_subtotal_path(assigns(:report_subtotal))
  end

  test "should destroy report_subtotal" do
    assert_difference('ReportSubtotal.count', -1) do
      delete :destroy, id: @report_subtotal
    end

    assert_redirected_to report_subtotals_path
  end
end
