require 'test_helper'

class FirewallsControllerTest < ActionController::TestCase
  setup do
    @firewall = firewalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firewalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firewall" do
    assert_difference('Firewall.count') do
      post :create, firewall: { name: @firewall.name, routers: @firewall.routers, status: @firewall.status, tenant_uid: @firewall.tenant_uid }
    end

    assert_redirected_to firewall_path(assigns(:firewall))
  end

  test "should show firewall" do
    get :show, id: @firewall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firewall
    assert_response :success
  end

  test "should update firewall" do
    patch :update, id: @firewall, firewall: { name: @firewall.name, routers: @firewall.routers, status: @firewall.status, tenant_uid: @firewall.tenant_uid }
    assert_redirected_to firewall_path(assigns(:firewall))
  end

  test "should destroy firewall" do
    assert_difference('Firewall.count', -1) do
      delete :destroy, id: @firewall
    end

    assert_redirected_to firewalls_path
  end
end
