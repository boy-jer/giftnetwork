require 'test_helper'

class DailyDealsControllerTest < ActionController::TestCase
  setup do
    @daily_deal = daily_deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_deal" do
    assert_difference('DailyDeal.count') do
      post :create, :daily_deal => @daily_deal.attributes
    end

    assert_redirected_to daily_deal_path(assigns(:daily_deal))
  end

  test "should show daily_deal" do
    get :show, :id => @daily_deal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @daily_deal.to_param
    assert_response :success
  end

  test "should update daily_deal" do
    put :update, :id => @daily_deal.to_param, :daily_deal => @daily_deal.attributes
    assert_redirected_to daily_deal_path(assigns(:daily_deal))
  end

  test "should destroy daily_deal" do
    assert_difference('DailyDeal.count', -1) do
      delete :destroy, :id => @daily_deal.to_param
    end

    assert_redirected_to daily_deals_path
  end
end
