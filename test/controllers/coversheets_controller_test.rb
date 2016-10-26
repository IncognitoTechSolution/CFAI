require 'test_helper'

class CoversheetsControllerTest < ActionController::TestCase
  setup do
    @coversheet = coversheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coversheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coversheet" do
    assert_difference('Coversheet.count') do
      post :create, coversheet: { election_type_id: @coversheet.election_type_id, electiondate: @coversheet.electiondate, office_held_id: @coversheet.office_held_id, office_sought_id: @coversheet.office_sought_id, periodbegin: @coversheet.periodbegin, periodend: @coversheet.periodend, report_id: @coversheet.report_id, treasurer_id: @coversheet.treasurer_id }
    end

    assert_redirected_to coversheet_path(assigns(:coversheet))
  end

  test "should show coversheet" do
    get :show, id: @coversheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coversheet
    assert_response :success
  end

  test "should update coversheet" do
    patch :update, id: @coversheet, coversheet: { election_type_id: @coversheet.election_type_id, electiondate: @coversheet.electiondate, office_held_id: @coversheet.office_held_id, office_sought_id: @coversheet.office_sought_id, periodbegin: @coversheet.periodbegin, periodend: @coversheet.periodend, report_id: @coversheet.report_id, treasurer_id: @coversheet.treasurer_id }
    assert_redirected_to coversheet_path(assigns(:coversheet))
  end

  test "should destroy coversheet" do
    assert_difference('Coversheet.count', -1) do
      delete :destroy, id: @coversheet
    end

    assert_redirected_to coversheets_path
  end
end
