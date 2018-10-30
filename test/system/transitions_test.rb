require "application_system_test_case"

class TransitionsTest < ApplicationSystemTestCase
  setup do
    @transition = transitions(:one)
  end

  test "visiting the index" do
    visit transitions_url
    assert_selector "h1", text: "Transitions"
  end

  test "creating a Transition" do
    visit transitions_url
    click_on "New Transition"

    fill_in "Act", with: @transition.act
    fill_in "Block No", with: @transition.block_no
    fill_in "Data Type", with: @transition.data_type
    fill_in "E No", with: @transition.e_no
    fill_in "Generate No", with: @transition.generate_no
    fill_in "Result No", with: @transition.result_no
    fill_in "Turn", with: @transition.turn
    fill_in "Value", with: @transition.value
    click_on "Create Transition"

    assert_text "Transition was successfully created"
    click_on "Back"
  end

  test "updating a Transition" do
    visit transitions_url
    click_on "Edit", match: :first

    fill_in "Act", with: @transition.act
    fill_in "Block No", with: @transition.block_no
    fill_in "Data Type", with: @transition.data_type
    fill_in "E No", with: @transition.e_no
    fill_in "Generate No", with: @transition.generate_no
    fill_in "Result No", with: @transition.result_no
    fill_in "Turn", with: @transition.turn
    fill_in "Value", with: @transition.value
    click_on "Update Transition"

    assert_text "Transition was successfully updated"
    click_on "Back"
  end

  test "destroying a Transition" do
    visit transitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transition was successfully destroyed"
  end
end
