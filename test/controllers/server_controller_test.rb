require 'test_helper'

class ServerControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get server_all_url
    assert_response :success
  end

end
