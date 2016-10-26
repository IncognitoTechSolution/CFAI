require 'test_helper'

class FilersControllerTest < ActionController::TestCase
  setup do
    @filer = filers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filer" do
    assert_difference('Filer.count') do
      post :create, filer: { active: @filer.active, address: @filer.address, addresstwo: @filer.addresstwo, city: @filer.city, committee: @filer.committee, email: @filer.email, emailreleasepassword: @filer.emailreleasepassword, ext: @filer.ext, filer_type_id: @filer.filer_type_id, firstname: @filer.firstname, lastname: @filer.lastname, mi: @filer.mi, phone: @filer.phone, receivedate: @filer.receivedate, releasepasswordto: @filer.releasepasswordto, state_id: @filer.state_id, suite: @filer.suite, zipcode: @filer.zipcode }
    end

    assert_redirected_to filer_path(assigns(:filer))
  end

  test "should show filer" do
    get :show, id: @filer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filer
    assert_response :success
  end

  test "should update filer" do
    patch :update, id: @filer, filer: { active: @filer.active, address: @filer.address, addresstwo: @filer.addresstwo, city: @filer.city, committee: @filer.committee, email: @filer.email, emailreleasepassword: @filer.emailreleasepassword, ext: @filer.ext, filer_type_id: @filer.filer_type_id, firstname: @filer.firstname, lastname: @filer.lastname, mi: @filer.mi, phone: @filer.phone, receivedate: @filer.receivedate, releasepasswordto: @filer.releasepasswordto, state_id: @filer.state_id, suite: @filer.suite, zipcode: @filer.zipcode }
    assert_redirected_to filer_path(assigns(:filer))
  end

  test "should destroy filer" do
    assert_difference('Filer.count', -1) do
      delete :destroy, id: @filer
    end

    assert_redirected_to filers_path
  end
end
