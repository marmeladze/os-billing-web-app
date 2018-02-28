require 'test_helper'

class TenantBillsControllerTest < ActionController::TestCase
  setup do
    @tenant_bill = tenant_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenant_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenant_bill" do
    assert_difference('TenantBill.count') do
      post :create, tenant_bill: { bill_month: @tenant_bill.bill_month, enabled: @tenant_bill.enabled, status: @tenant_bill.status, tenant_id: @tenant_bill.tenant_id, total_ram: @tenant_bill.total_ram, total_vcpu: @tenant_bill.total_vcpu, total_vdisk: @tenant_bill.total_vdisk, totoal_usage: @tenant_bill.totoal_usage }
    end

    assert_redirected_to tenant_bill_path(assigns(:tenant_bill))
  end

  test "should show tenant_bill" do
    get :show, id: @tenant_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenant_bill
    assert_response :success
  end

  test "should update tenant_bill" do
    patch :update, id: @tenant_bill, tenant_bill: { bill_month: @tenant_bill.bill_month, enabled: @tenant_bill.enabled, status: @tenant_bill.status, tenant_id: @tenant_bill.tenant_id, total_ram: @tenant_bill.total_ram, total_vcpu: @tenant_bill.total_vcpu, total_vdisk: @tenant_bill.total_vdisk, totoal_usage: @tenant_bill.totoal_usage }
    assert_redirected_to tenant_bill_path(assigns(:tenant_bill))
  end

  test "should destroy tenant_bill" do
    assert_difference('TenantBill.count', -1) do
      delete :destroy, id: @tenant_bill
    end

    assert_redirected_to tenant_bills_path
  end
end
