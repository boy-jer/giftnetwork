require 'test_helper'

class DailyDealLocationsControllerTest < ActionController::TestCase
  setup do
    @daily_deal_location = daily_deal_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_deal_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_deal_location" do
    assert_difference('DailyDealLocation.count') do
      post :create, :daily_deal_location => @daily_deal_location.attributes
    end

    assert_redirected_to daily_deal_location_path(assigns(:daily_deal_location))
  end

  test "should show daily_deal_location" do
    get :show, :id => @daily_deal_location.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @daily_deal_location.to_param
    assert_response :success
  end

  test "should update daily_deal_location" do
    put :update, :id => @daily_deal_location.to_param, :daily_deal_location => @daily_deal_location.attributes
    assert_redirected_to daily_deal_location_path(assigns(:daily_deal_location))
  end

  test "should destroy daily_deal_location" do
    assert_difference('DailyDealLocation.count', -1) do
      delete :destroy, :id => @daily_deal_location.to_param
    end

    assert_redirected_to daily_deal_locations_path
  end
end
