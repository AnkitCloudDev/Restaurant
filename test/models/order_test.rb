require 'test_helper'

class OrderTest < ActiveSupport::TestCase
test "must save an order" do
      order = orders(:one)
      assert_equal(true, order.save, "saved a user when email and passord is  provided!")
     end
end
