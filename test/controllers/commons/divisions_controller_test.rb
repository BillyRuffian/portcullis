require "test_helper"

class Commons::DivisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commons_divisions_index_url
    assert_response :success
  end
end
