require 'test_helper'

class MedicineControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get medicine_all_url
    assert_response :success
  end

  test "should get show" do
    get medicine_show_url
    assert_response :success
  end

end
