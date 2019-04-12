require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  setup do
    @order = orders(:one)
  end


  test "should get new" do
    sign_in users(:one)
    get new_order_url
    assert_response :success
  end


  test "should get edit" do
    sign_in users(:one)
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    sign_in users(:one)
    patch order_url(@order), params: { order: { order_status_id: @order.order_status_id, shipping: @order.shipping, subtotal: @order.subtotal, tax: @order.tax, total: @order.total } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    sign_in users(:one)
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
