require "test_helper"

class WrittenQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get written_questions_index_url
    assert_response :success
  end
end
