require "application_system_test_case"

class ConditionAllTextsTest < ApplicationSystemTestCase
  setup do
    @condition_all_text = condition_all_texts(:one)
  end

  test "visiting the index" do
    visit condition_all_texts_url
    assert_selector "h1", text: "Condition All Texts"
  end

  test "creating a Condition all text" do
    visit condition_all_texts_url
    click_on "New Condition All Text"

    fill_in "Condition Text", with: @condition_all_text.condition_text
    fill_in "E No", with: @condition_all_text.e_no
    fill_in "Generate No", with: @condition_all_text.generate_no
    fill_in "Result No", with: @condition_all_text.result_no
    click_on "Create Condition all text"

    assert_text "Condition all text was successfully created"
    click_on "Back"
  end

  test "updating a Condition all text" do
    visit condition_all_texts_url
    click_on "Edit", match: :first

    fill_in "Condition Text", with: @condition_all_text.condition_text
    fill_in "E No", with: @condition_all_text.e_no
    fill_in "Generate No", with: @condition_all_text.generate_no
    fill_in "Result No", with: @condition_all_text.result_no
    click_on "Update Condition all text"

    assert_text "Condition all text was successfully updated"
    click_on "Back"
  end

  test "destroying a Condition all text" do
    visit condition_all_texts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Condition all text was successfully destroyed"
  end
end
