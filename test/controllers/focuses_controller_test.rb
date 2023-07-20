require "test_helper"

class FocusesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get focuses_show_url
    assert_response :success
  end
end
