require 'test_helper'

class NonMonetaryContributionsControllerTest < ActionController::TestCase
  setup do
    @non_monetary_contribution = non_monetary_contributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_monetary_contributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_monetary_contribution" do
    assert_difference('NonMonetaryContribution.count') do
      post :create, non_monetary_contribution: { amount: @non_monetary_contribution.amount, candidate_id: @non_monetary_contribution.candidate_id, date: @non_monetary_contribution.date, description: @non_monetary_contribution.description, entity_id: @non_monetary_contribution.entity_id, nmctotal: @non_monetary_contribution.nmctotal, outofstatepac: @non_monetary_contribution.outofstatepac, pacid: @non_monetary_contribution.pacid, report_id: @non_monetary_contribution.report_id, transaction_id: @non_monetary_contribution.transaction_id, travel_id: @non_monetary_contribution.travel_id }
    end

    assert_redirected_to non_monetary_contribution_path(assigns(:non_monetary_contribution))
  end

  test "should show non_monetary_contribution" do
    get :show, id: @non_monetary_contribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_monetary_contribution
    assert_response :success
  end

  test "should update non_monetary_contribution" do
    patch :update, id: @non_monetary_contribution, non_monetary_contribution: { amount: @non_monetary_contribution.amount, candidate_id: @non_monetary_contribution.candidate_id, date: @non_monetary_contribution.date, description: @non_monetary_contribution.description, entity_id: @non_monetary_contribution.entity_id, nmctotal: @non_monetary_contribution.nmctotal, outofstatepac: @non_monetary_contribution.outofstatepac, pacid: @non_monetary_contribution.pacid, report_id: @non_monetary_contribution.report_id, transaction_id: @non_monetary_contribution.transaction_id, travel_id: @non_monetary_contribution.travel_id }
    assert_redirected_to non_monetary_contribution_path(assigns(:non_monetary_contribution))
  end

  test "should destroy non_monetary_contribution" do
    assert_difference('NonMonetaryContribution.count', -1) do
      delete :destroy, id: @non_monetary_contribution
    end

    assert_redirected_to non_monetary_contributions_path
  end
end
