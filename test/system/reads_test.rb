require "application_system_test_case"

class ReadsTest < ApplicationSystemTestCase
  setup do
    @read = reads(:one)
  end

  test "visiting the index" do
    visit reads_url
    assert_selector "h1", text: "Reads"
  end

  test "should create read" do
    visit reads_url
    click_on "New read"

    fill_in "Stating type", with: @read.stating_type
    click_on "Create Read"

    assert_text "Read was successfully created"
    click_on "Back"
  end

  test "should update Read" do
    visit read_url(@read)
    click_on "Edit this read", match: :first

    fill_in "Stating type", with: @read.stating_type
    click_on "Update Read"

    assert_text "Read was successfully updated"
    click_on "Back"
  end

  test "should destroy Read" do
    visit read_url(@read)
    click_on "Destroy this read", match: :first

    assert_text "Read was successfully destroyed"
  end
end
