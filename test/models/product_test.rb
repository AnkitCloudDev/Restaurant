require 'test_helper'

class ProductTest < ActiveSupport::TestCase
test "must save a product when all fields are provided" do
      product = products(:one)
      assert_equal(true, product.save, "saved a user when email and passord is  provided!")
     end
end
