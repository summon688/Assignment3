require "application_system_test_case"

class FsTest < ApplicationSystemTestCase
  setup do
    @f = fs(:one)
  end

  test "visiting the index" do
    visit fs_url
    assert_selector "h1", text: "Fs"
  end

  test "creating a F" do
    visit fs_url
    click_on "New F"

    fill_in "Name", with: @f.Name
    click_on "Create F"

    assert_text "F was successfully created"
    click_on "Back"
  end

  test "updating a F" do
    visit fs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @f.Name
    click_on "Update F"

    assert_text "F was successfully updated"
    click_on "Back"
  end

  test "destroying a F" do
    visit fs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "F was successfully destroyed"
  end
end
