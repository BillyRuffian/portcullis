require "test_helper"

class OralContributionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oral_contributions_index_url
    assert_response :success
  end

  test "should get show" do
    get oral_contributions_show_url
    assert_response :success
  end
end
