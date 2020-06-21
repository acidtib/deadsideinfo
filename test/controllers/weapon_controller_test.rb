require 'test_helper'

class WeaponControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get weapon_all_url
    assert_response :success
  end

  test "should get show" do
    get weapon_show_url
    assert_response :success
  end

end
