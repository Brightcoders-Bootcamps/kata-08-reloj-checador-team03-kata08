require "application_system_test_case"

class ChecksTest < ApplicationSystemTestCase
  setup do
    @check = checks(:one)
  end

  test "visiting the index" do
    visit checks_url
    assert_selector "h1", text: "Checks"
  end

  test "creating a Check" do
    visit checks_url
    click_on "New Check"

    check "Direction" if @check.direction
    fill_in "Employee", with: @check.employee_id
    fill_in "Time", with: @check.time
    click_on "Create Check"

    assert_text "Check was successfully created"
    click_on "Back"
  end

  test "updating a Check" do
    visit checks_url
    click_on "Edit", match: :first

    check "Direction" if @check.direction
    fill_in "Employee", with: @check.employee_id
    fill_in "Time", with: @check.time
    click_on "Update Check"

    assert_text "Check was successfully updated"
    click_on "Back"
  end

  test "destroying a Check" do
    visit checks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check was successfully destroyed"
  end
end
