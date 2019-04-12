require 'test_helper'

class OrderHistoryTest < ActiveSupport::TestCase
test "must save an order history after user checksout" do
      order_history = order_histories(:one)
      assert_equal(true, order_history.save, "saved a user when email and passord is  provided!")
     end
end
