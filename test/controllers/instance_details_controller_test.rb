require 'test_helper'

class InstanceDetailsControllerTest < ActionController::TestCase
  setup do
    @instance_detail = instance_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_detail" do
    assert_difference('InstanceDetail.count') do
      post :create, instance_detail: { created: @instance_detail.created, instance_id_id: @instance_detail.instance_id_id, state: @instance_detail.state, status: @instance_detail.status, zone: @instance_detail.zone }
    end

    assert_redirected_to instance_detail_path(assigns(:instance_detail))
  end

  test "should show instance_detail" do
    get :show, id: @instance_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_detail
    assert_response :success
  end

  test "should update instance_detail" do
    patch :update, id: @instance_detail, instance_detail: { created: @instance_detail.created, instance_id_id: @instance_detail.instance_id_id, state: @instance_detail.state, status: @instance_detail.status, zone: @instance_detail.zone }
    assert_redirected_to instance_detail_path(assigns(:instance_detail))
  end

  test "should destroy instance_detail" do
    assert_difference('InstanceDetail.count', -1) do
      delete :destroy, id: @instance_detail
    end

    assert_redirected_to instance_details_path
  end
end
