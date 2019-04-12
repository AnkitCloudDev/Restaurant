require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase
test "must save the order status" do
      order_status = order_statuses(:one)
      assert_equal(true, order_status.save, "saved a user when email and passord is  provided!")
     end
end
