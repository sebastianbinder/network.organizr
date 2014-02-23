require 'test_helper'

class IpRangesControllerTest < ActionController::TestCase
  setup do
    @ip_range = ip_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_range" do
    assert_difference('IpRange.count') do
      post :create, ip_range: { ipbase: @ip_range.ipbase, name: @ip_range.name }
    end

    assert_redirected_to ip_range_path(assigns(:ip_range))
  end

  test "should show ip_range" do
    get :show, id: @ip_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip_range
    assert_response :success
  end

  test "should update ip_range" do
    patch :update, id: @ip_range, ip_range: { ipbase: @ip_range.ipbase, name: @ip_range.name }
    assert_redirected_to ip_range_path(assigns(:ip_range))
  end

  test "should destroy ip_range" do
    assert_difference('IpRange.count', -1) do
      delete :destroy, id: @ip_range
    end

    assert_redirected_to ip_ranges_path
  end
end
