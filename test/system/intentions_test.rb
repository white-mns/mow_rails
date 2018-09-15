require "application_system_test_case"

class IntentionsTest < ApplicationSystemTestCase
  setup do
    @intention = intentions(:one)
  end

  test "visiting the index" do
    visit intentions_url
    assert_selector "h1", text: "Intentions"
  end

  test "creating a Intention" do
    visit intentions_url
    click_on "New Intention"

    fill_in "E No", with: @intention.e_no
    fill_in "Generate No", with: @intention.generate_no
    fill_in "Intention", with: @intention.intention
    fill_in "Result No", with: @intention.result_no
    click_on "Create Intention"

    assert_text "Intention was successfully created"
    click_on "Back"
  end

  test "updating a Intention" do
    visit intentions_url
    click_on "Edit", match: :first

    fill_in "E No", with: @intention.e_no
    fill_in "Generate No", with: @intention.generate_no
    fill_in "Intention", with: @intention.intention
    fill_in "Result No", with: @intention.result_no
    click_on "Update Intention"

    assert_text "Intention was successfully updated"
    click_on "Back"
  end

  test "destroying a Intention" do
    visit intentions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intention was successfully destroyed"
  end
end
