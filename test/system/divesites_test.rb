require "application_system_test_case"

class DivesitesTest < ApplicationSystemTestCase
  setup do
    @divesite = divesites(:one)
  end

  test "visiting the index" do
    visit divesites_url
    assert_selector "h1", text: "Divesites"
  end

  test "creating a Divesite" do
    visit divesites_url
    click_on "New Divesite"

    fill_in "Name", with: @divesite.name
    click_on "Create Divesite"

    assert_text "Divesite was successfully created"
    click_on "Back"
  end

  test "updating a Divesite" do
    visit divesites_url
    click_on "Edit", match: :first

    fill_in "Name", with: @divesite.name
    click_on "Update Divesite"

    assert_text "Divesite was successfully updated"
    click_on "Back"
  end

  test "destroying a Divesite" do
    visit divesites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Divesite was successfully destroyed"
  end
end
