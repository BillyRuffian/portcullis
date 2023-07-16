require "test_helper"

class BiographiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get biographies_show_url
    assert_response :success
  end
end
