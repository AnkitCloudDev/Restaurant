require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  setup do
    @product = products(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get products_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_product_url
    assert_response :success
  end


   


   
end
