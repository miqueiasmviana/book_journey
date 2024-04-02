require "test_helper"

class BookCurrentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_current = book_currents(:one)
  end

  test "should get index" do
    get book_currents_url
    assert_response :success
  end

  test "should get new" do
    get new_book_current_url
    assert_response :success
  end

  test "should create book_current" do
    assert_difference("BookCurrent.count") do
      post book_currents_url, params: { book_current: { current_type: @book_current.current_type } }
    end

    assert_redirected_to book_current_url(BookCurrent.last)
  end

  test "should show book_current" do
    get book_current_url(@book_current)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_current_url(@book_current)
    assert_response :success
  end

  test "should update book_current" do
    patch book_current_url(@book_current), params: { book_current: { current_type: @book_current.current_type } }
    assert_redirected_to book_current_url(@book_current)
  end

  test "should destroy book_current" do
    assert_difference("BookCurrent.count", -1) do
      delete book_current_url(@book_current)
    end

    assert_redirected_to book_currents_url
  end
end
