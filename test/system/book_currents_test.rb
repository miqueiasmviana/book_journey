require "application_system_test_case"

class BookCurrentsTest < ApplicationSystemTestCase
  setup do
    @book_current = book_currents(:one)
  end

  test "visiting the index" do
    visit book_currents_url
    assert_selector "h1", text: "Book currents"
  end

  test "should create book current" do
    visit book_currents_url
    click_on "New book current"

    fill_in "Current type", with: @book_current.current_type
    click_on "Create Book current"

    assert_text "Book current was successfully created"
    click_on "Back"
  end

  test "should update Book current" do
    visit book_current_url(@book_current)
    click_on "Edit this book current", match: :first

    fill_in "Current type", with: @book_current.current_type
    click_on "Update Book current"

    assert_text "Book current was successfully updated"
    click_on "Back"
  end

  test "should destroy Book current" do
    visit book_current_url(@book_current)
    click_on "Destroy this book current", match: :first

    assert_text "Book current was successfully destroyed"
  end
end
