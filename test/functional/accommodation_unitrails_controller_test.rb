require 'test_helper'

class AccommodationUnitrailsControllerTest < ActionController::TestCase
  setup do
    @accommodation_unitrail = accommodation_unitrails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accommodation_unitrails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accommodation_unitrail" do
    assert_difference('AccommodationUnitrail.count') do
      post :create, accommodation_unitrail: @accommodation_unitrail.attributes
    end

    assert_redirected_to accommodation_unitrail_path(assigns(:accommodation_unitrail))
  end

  test "should show accommodation_unitrail" do
    get :show, id: @accommodation_unitrail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accommodation_unitrail
    assert_response :success
  end

  test "should update accommodation_unitrail" do
    put :update, id: @accommodation_unitrail, accommodation_unitrail: @accommodation_unitrail.attributes
    assert_redirected_to accommodation_unitrail_path(assigns(:accommodation_unitrail))
  end

  test "should destroy accommodation_unitrail" do
    assert_difference('AccommodationUnitrail.count', -1) do
      delete :destroy, id: @accommodation_unitrail
    end

    assert_redirected_to accommodation_unitrails_path
  end
end
