require 'test_helper'

class FoodAndDrinkControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get food_and_drink_new_url
    assert_response :success
  end

end
