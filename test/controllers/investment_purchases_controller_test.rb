require 'test_helper'

class InvestmentPurchasesControllerTest < ActionController::TestCase
  setup do
    @investment_purchase = investment_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investment_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investment_purchase" do
    assert_difference('InvestmentPurchase.count') do
      post :create, investment_purchase: { amount: @investment_purchase.amount, candidate_id: @investment_purchase.candidate_id, date: @investment_purchase.date, description: @investment_purchase.description, entity_id: @investment_purchase.entity_id, expend_type_id: @investment_purchase.expend_type_id, iptotal: @investment_purchase.iptotal, report_id: @investment_purchase.report_id, transaction_id: @investment_purchase.transaction_id }
    end

    assert_redirected_to investment_purchase_path(assigns(:investment_purchase))
  end

  test "should show investment_purchase" do
    get :show, id: @investment_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investment_purchase
    assert_response :success
  end

  test "should update investment_purchase" do
    patch :update, id: @investment_purchase, investment_purchase: { amount: @investment_purchase.amount, candidate_id: @investment_purchase.candidate_id, date: @investment_purchase.date, description: @investment_purchase.description, entity_id: @investment_purchase.entity_id, expend_type_id: @investment_purchase.expend_type_id, iptotal: @investment_purchase.iptotal, report_id: @investment_purchase.report_id, transaction_id: @investment_purchase.transaction_id }
    assert_redirected_to investment_purchase_path(assigns(:investment_purchase))
  end

  test "should destroy investment_purchase" do
    assert_difference('InvestmentPurchase.count', -1) do
      delete :destroy, id: @investment_purchase
    end

    assert_redirected_to investment_purchases_path
  end
end
