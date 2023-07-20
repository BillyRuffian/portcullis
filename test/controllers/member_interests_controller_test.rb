require "test_helper"

class MemberInterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get member_interests_show_url
    assert_response :success
  end
end
