require "test_helper"

class Commons::MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get commons_members_show_url
    assert_response :success
  end
end
