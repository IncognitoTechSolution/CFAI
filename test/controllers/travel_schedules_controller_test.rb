require 'test_helper'

class TravelSchedulesControllerTest < ActionController::TestCase
  setup do
    @travel_schedule = travel_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_schedule" do
    assert_difference('TravelSchedule.count') do
      post :create, travel_schedule: { name: @travel_schedule.name }
    end

    assert_redirected_to travel_schedule_path(assigns(:travel_schedule))
  end

  test "should show travel_schedule" do
    get :show, id: @travel_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_schedule
    assert_response :success
  end

  test "should update travel_schedule" do
    patch :update, id: @travel_schedule, travel_schedule: { name: @travel_schedule.name }
    assert_redirected_to travel_schedule_path(assigns(:travel_schedule))
  end

  test "should destroy travel_schedule" do
    assert_difference('TravelSchedule.count', -1) do
      delete :destroy, id: @travel_schedule
    end

    assert_redirected_to travel_schedules_path
  end
end
