require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
test "must save a profile when info is  provided" do
      profile = profiles(:one)
      assert_equal(true, profile.save, "saved a user when email and passord is  provided!")
     end
end
