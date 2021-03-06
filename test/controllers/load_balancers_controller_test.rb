require 'test_helper'

class LoadBalancersControllerTest < ActionController::TestCase
  setup do
    @load_balancer = load_balancers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:load_balancers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create load_balancer" do
    assert_difference('LoadBalancer.count') do
      post :create, load_balancer: { name: @load_balancer.name, operating_status: @load_balancer.operating_status, provider: @load_balancer.provider, provisioning_status: @load_balancer.provisioning_status, tenant_uid: @load_balancer.tenant_uid, vip_address: @load_balancer.vip_address }
    end

    assert_redirected_to load_balancer_path(assigns(:load_balancer))
  end

  test "should show load_balancer" do
    get :show, id: @load_balancer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @load_balancer
    assert_response :success
  end

  test "should update load_balancer" do
    patch :update, id: @load_balancer, load_balancer: { name: @load_balancer.name, operating_status: @load_balancer.operating_status, provider: @load_balancer.provider, provisioning_status: @load_balancer.provisioning_status, tenant_uid: @load_balancer.tenant_uid, vip_address: @load_balancer.vip_address }
    assert_redirected_to load_balancer_path(assigns(:load_balancer))
  end

  test "should destroy load_balancer" do
    assert_difference('LoadBalancer.count', -1) do
      delete :destroy, id: @load_balancer
    end

    assert_redirected_to load_balancers_path
  end
end
