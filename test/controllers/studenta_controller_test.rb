require "test_helper"

class StudentaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get studenta_index_url
    assert_response :success
  end

  test "should get show" do
    get studenta_show_url
    assert_response :success
  end
end
