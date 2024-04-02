require "test_helper"

class FinishedBookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get finished_book_index_url
    assert_response :success
  end
end
