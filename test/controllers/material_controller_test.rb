require 'test_helper'

class MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get material_all_url
    assert_response :success
  end

  test "should get show" do
    get material_show_url
    assert_response :success
  end

end
