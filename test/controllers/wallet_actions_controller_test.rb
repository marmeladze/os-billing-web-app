require 'test_helper'

class WalletActionsControllerTest < ActionController::TestCase
  setup do
    @wallet_action = wallet_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wallet_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wallet_action" do
    assert_difference('WalletAction.count') do
      post :create, wallet_action: { action_type: @wallet_action.action_type, amount: @wallet_action.amount, wallet_id: @wallet_action.wallet_id }
    end

    assert_redirected_to wallet_action_path(assigns(:wallet_action))
  end

  test "should show wallet_action" do
    get :show, id: @wallet_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wallet_action
    assert_response :success
  end

  test "should update wallet_action" do
    patch :update, id: @wallet_action, wallet_action: { action_type: @wallet_action.action_type, amount: @wallet_action.amount, wallet_id: @wallet_action.wallet_id }
    assert_redirected_to wallet_action_path(assigns(:wallet_action))
  end

  test "should destroy wallet_action" do
    assert_difference('WalletAction.count', -1) do
      delete :destroy, id: @wallet_action
    end

    assert_redirected_to wallet_actions_path
  end
end
