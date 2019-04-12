require 'test_helper'

class OrderStatusesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @order_status = order_statuses(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get order_statuses_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_order_status_url
    assert_response :success
  end

  test "should create order_status" do
    sign_in users(:one)
    assert_difference('OrderStatus.count') do
      post order_statuses_url, params: { order_status: { name: @order_status.name } }
    end

    assert_redirected_to order_status_url(OrderStatus.last)
  end

  test "should show order_status" do
    sign_in users(:one)
    get order_status_url(@order_status)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_order_status_url(@order_status)
    assert_response :success
  end

  test "should update order_status" do
    sign_in users(:one)
    patch order_status_url(@order_status), params: { order_status: { name: @order_status.name } }
    assert_redirected_to order_status_url(@order_status)
  end

  test "should destroy order_status" do
    sign_in users(:one)
    assert_difference('OrderStatus.count', -1) do
      delete order_status_url(@order_status)
    end

    assert_redirected_to order_statuses_url
  end
end
