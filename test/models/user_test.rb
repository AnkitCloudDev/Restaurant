require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must save a user when email and passord is  provided" do
      user = users(:one)
      assert_equal(true, user.save, "saved a user when email and passord is  provided!")
     end
end
