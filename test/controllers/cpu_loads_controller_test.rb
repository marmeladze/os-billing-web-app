require 'test_helper'

class CpuLoadsControllerTest < ActionController::TestCase
  setup do
    @cpu_load = cpu_loads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpu_loads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpu_load" do
    assert_difference('CpuLoad.count') do
      post :create, cpu_load: { instance_id: @cpu_load.instance_id, observed_at: @cpu_load.observed_at, percentage: @cpu_load.percentage }
    end

    assert_redirected_to cpu_load_path(assigns(:cpu_load))
  end

  test "should show cpu_load" do
    get :show, id: @cpu_load
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpu_load
    assert_response :success
  end

  test "should update cpu_load" do
    patch :update, id: @cpu_load, cpu_load: { instance_id: @cpu_load.instance_id, observed_at: @cpu_load.observed_at, percentage: @cpu_load.percentage }
    assert_redirected_to cpu_load_path(assigns(:cpu_load))
  end

  test "should destroy cpu_load" do
    assert_difference('CpuLoad.count', -1) do
      delete :destroy, id: @cpu_load
    end

    assert_redirected_to cpu_loads_path
  end
end
