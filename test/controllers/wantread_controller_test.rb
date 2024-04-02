require "test_helper"

class WantreadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wantread_index_url
    assert_response :success
  end
end
