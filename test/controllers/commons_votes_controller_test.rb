require "test_helper"

class CommonsVotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commons_votes_index_url
    assert_response :success
  end
end
