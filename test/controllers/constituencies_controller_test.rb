require "test_helper"

class ConstituenciesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get constituencies_show_url
    assert_response :success
  end
end
