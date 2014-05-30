require 'test_helper'

class RecentTransactionsControllerTest < ActionController::TestCase
  setup do
    @recent_transaction = recent_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recent_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recent_transaction" do
    assert_difference('RecentTransaction.count') do
      post :create, recent_transaction: { amount: @recent_transaction.amount, image: @recent_transaction.image, location: @recent_transaction.location, name: @recent_transaction.name, property_type: @recent_transaction.property_type }
    end

    assert_redirected_to recent_transaction_path(assigns(:recent_transaction))
  end

  test "should show recent_transaction" do
    get :show, id: @recent_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recent_transaction
    assert_response :success
  end

  test "should update recent_transaction" do
    put :update, id: @recent_transaction, recent_transaction: { amount: @recent_transaction.amount, image: @recent_transaction.image, location: @recent_transaction.location, name: @recent_transaction.name, property_type: @recent_transaction.property_type }
    assert_redirected_to recent_transaction_path(assigns(:recent_transaction))
  end

  test "should destroy recent_transaction" do
    assert_difference('RecentTransaction.count', -1) do
      delete :destroy, id: @recent_transaction
    end

    assert_redirected_to recent_transactions_path
  end
end
