require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  test "should get show" do
    sign_in users(:one)
    get carts_show_url
    assert_response :success
  end

end
