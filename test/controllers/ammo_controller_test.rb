require 'test_helper'

class AmmoControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get ammo_all_url
    assert_response :success
  end

  test "should get show" do
    get ammo_show_url
    assert_response :success
  end

end
