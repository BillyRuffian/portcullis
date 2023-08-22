require "test_helper"

class CommonsDivisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get commons_divisions_show_url
    assert_response :success
  end
end
