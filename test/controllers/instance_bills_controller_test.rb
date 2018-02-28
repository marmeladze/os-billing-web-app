require 'test_helper'

class InstanceBillsControllerTest < ActionController::TestCase
  setup do
    @instance_bill = instance_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_bill" do
    assert_difference('InstanceBill.count') do
      post :create, instance_bill: { enabled: @instance_bill.enabled, name: @instance_bill.name, total_cost: @instance_bill.total_cost, total_ram: @instance_bill.total_ram, total_vcpu: @instance_bill.total_vcpu, total_vdisk: @instance_bill.total_vdisk }
    end

    assert_redirected_to instance_bill_path(assigns(:instance_bill))
  end

  test "should show instance_bill" do
    get :show, id: @instance_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_bill
    assert_response :success
  end

  test "should update instance_bill" do
    patch :update, id: @instance_bill, instance_bill: { enabled: @instance_bill.enabled, name: @instance_bill.name, total_cost: @instance_bill.total_cost, total_ram: @instance_bill.total_ram, total_vcpu: @instance_bill.total_vcpu, total_vdisk: @instance_bill.total_vdisk }
    assert_redirected_to instance_bill_path(assigns(:instance_bill))
  end

  test "should destroy instance_bill" do
    assert_difference('InstanceBill.count', -1) do
      delete :destroy, id: @instance_bill
    end

    assert_redirected_to instance_bills_path
  end
end
