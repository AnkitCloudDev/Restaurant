require 'test_helper'

class OrderItemsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  setup do
    @order_item = order_items(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get order_items_url
    assert_response :success
  end


  test "should show order_item" do
    sign_in users(:one)
    get order_item_url(@order_item)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_order_item_url(@order_item)
    assert_response :success
  end


end
