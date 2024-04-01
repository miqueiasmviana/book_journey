require "test_helper"

class ReadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read = reads(:one)
  end

  test "should get index" do
    get reads_url
    assert_response :success
  end

  test "should get new" do
    get new_read_url
    assert_response :success
  end

  test "should create read" do
    assert_difference("Read.count") do
      post reads_url, params: { read: { stating_type: @read.stating_type } }
    end

    assert_redirected_to read_url(Read.last)
  end

  test "should show read" do
    get read_url(@read)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_url(@read)
    assert_response :success
  end

  test "should update read" do
    patch read_url(@read), params: { read: { stating_type: @read.stating_type } }
    assert_redirected_to read_url(@read)
  end

  test "should destroy read" do
    assert_difference("Read.count", -1) do
      delete read_url(@read)
    end

    assert_redirected_to reads_url
  end
end
