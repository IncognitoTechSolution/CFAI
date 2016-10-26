require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { address: @candidate.address, addresschange: @candidate.addresschange, alias: @candidate.alias, apptsuitenum: @candidate.apptsuitenum, city: @candidate.city, ext: @candidate.ext, firstname: @candidate.firstname, lastname: @candidate.lastname, mi: @candidate.mi, office_held_id: @candidate.office_held_id, office_sought_id: @candidate.office_sought_id, phone: @candidate.phone, prefix_id: @candidate.prefix_id, state_id: @candidate.state_id, suffix: @candidate.suffix, zipcode: @candidate.zipcode }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { address: @candidate.address, addresschange: @candidate.addresschange, alias: @candidate.alias, apptsuitenum: @candidate.apptsuitenum, city: @candidate.city, ext: @candidate.ext, firstname: @candidate.firstname, lastname: @candidate.lastname, mi: @candidate.mi, office_held_id: @candidate.office_held_id, office_sought_id: @candidate.office_sought_id, phone: @candidate.phone, prefix_id: @candidate.prefix_id, state_id: @candidate.state_id, suffix: @candidate.suffix, zipcode: @candidate.zipcode }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
