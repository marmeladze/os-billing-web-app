require 'test_helper'

class BillUnitsControllerTest < ActionController::TestCase
  setup do
    @bill_unit = bill_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_unit" do
    assert_difference('BillUnit.count') do
      post :create, bill_unit: { date: @bill_unit.date, enabled: @bill_unit.enabled, ram: @bill_unit.ram, vcpu: @bill_unit.vcpu, vdisk: @bill_unit.vdisk }
    end

    assert_redirected_to bill_unit_path(assigns(:bill_unit))
  end

  test "should show bill_unit" do
    get :show, id: @bill_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_unit
    assert_response :success
  end

  test "should update bill_unit" do
    patch :update, id: @bill_unit, bill_unit: { date: @bill_unit.date, enabled: @bill_unit.enabled, ram: @bill_unit.ram, vcpu: @bill_unit.vcpu, vdisk: @bill_unit.vdisk }
    assert_redirected_to bill_unit_path(assigns(:bill_unit))
  end

  test "should destroy bill_unit" do
    assert_difference('BillUnit.count', -1) do
      delete :destroy, id: @bill_unit
    end

    assert_redirected_to bill_units_path
  end
end
