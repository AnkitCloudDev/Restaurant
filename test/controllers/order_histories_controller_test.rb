require 'test_helper'

class OrderHistoriesControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  setup do
        @order_history = order_histories(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get order_histories_url
    assert_response :success
  end




end
