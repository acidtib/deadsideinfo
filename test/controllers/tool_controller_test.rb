require 'test_helper'

class ToolControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get tool_all_url
    assert_response :success
  end

  test "should get show" do
    get tool_show_url
    assert_response :success
  end

end
