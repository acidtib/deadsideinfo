require 'test_helper'

class FoodDrinkControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get food_drink_all_url
    assert_response :success
  end

  test "should get show" do
    get food_drink_show_url
    assert_response :success
  end

end
