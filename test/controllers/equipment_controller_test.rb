require 'test_helper'

class EquipmentControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get equipment_all_url
    assert_response :success
  end

  test "should get show" do
    get equipment_show_url
    assert_response :success
  end

end
