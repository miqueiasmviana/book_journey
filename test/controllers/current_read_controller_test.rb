require "test_helper"

class CurrentReadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get current_read_index_url
    assert_response :success
  end
end
