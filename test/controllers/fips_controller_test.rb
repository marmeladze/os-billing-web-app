require 'test_helper'

class FipsControllerTest < ActionController::TestCase
  setup do
    @fip = fips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fip" do
    assert_difference('Fip.count') do
      post :create, fip: { creation: @fip.creation, fixed_ip: @fip.fixed_ip, floating_ip: @fip.floating_ip, status: @fip.status, tenant_uid: @fip.tenant_uid }
    end

    assert_redirected_to fip_path(assigns(:fip))
  end

  test "should show fip" do
    get :show, id: @fip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fip
    assert_response :success
  end

  test "should update fip" do
    patch :update, id: @fip, fip: { creation: @fip.creation, fixed_ip: @fip.fixed_ip, floating_ip: @fip.floating_ip, status: @fip.status, tenant_uid: @fip.tenant_uid }
    assert_redirected_to fip_path(assigns(:fip))
  end

  test "should destroy fip" do
    assert_difference('Fip.count', -1) do
      delete :destroy, id: @fip
    end

    assert_redirected_to fips_path
  end
end
