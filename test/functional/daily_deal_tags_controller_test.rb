require 'test_helper'

class DailyDealTagsControllerTest < ActionController::TestCase
  setup do
    @daily_deal_tag = daily_deal_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_deal_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_deal_tag" do
    assert_difference('DailyDealTag.count') do
      post :create, :daily_deal_tag => @daily_deal_tag.attributes
    end

    assert_redirected_to daily_deal_tag_path(assigns(:daily_deal_tag))
  end

  test "should show daily_deal_tag" do
    get :show, :id => @daily_deal_tag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @daily_deal_tag.to_param
    assert_response :success
  end

  test "should update daily_deal_tag" do
    put :update, :id => @daily_deal_tag.to_param, :daily_deal_tag => @daily_deal_tag.attributes
    assert_redirected_to daily_deal_tag_path(assigns(:daily_deal_tag))
  end

  test "should destroy daily_deal_tag" do
    assert_difference('DailyDealTag.count', -1) do
      delete :destroy, :id => @daily_deal_tag.to_param
    end

    assert_redirected_to daily_deal_tags_path
  end
end
