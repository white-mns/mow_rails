require "application_system_test_case"

class StatusesTest < ApplicationSystemTestCase
  setup do
    @status = statuses(:one)
  end

  test "visiting the index" do
    visit statuses_url
    assert_selector "h1", text: "Statuses"
  end

  test "creating a Status" do
    visit statuses_url
    click_on "New Status"

    fill_in "Acc Reward", with: @status.acc_reward
    fill_in "Control", with: @status.control
    fill_in "E No", with: @status.e_no
    fill_in "Exp", with: @status.exp
    fill_in "Fitly", with: @status.fitly
    fill_in "Funds", with: @status.funds
    fill_in "Generate No", with: @status.generate_no
    fill_in "Gunshot", with: @status.gunshot
    fill_in "Preparation", with: @status.preparation
    fill_in "Reaction", with: @status.reaction
    fill_in "Result No", with: @status.result_no
    fill_in "Rp", with: @status.rp
    fill_in "Struggle", with: @status.struggle
    click_on "Create Status"

    assert_text "Status was successfully created"
    click_on "Back"
  end

  test "updating a Status" do
    visit statuses_url
    click_on "Edit", match: :first

    fill_in "Acc Reward", with: @status.acc_reward
    fill_in "Control", with: @status.control
    fill_in "E No", with: @status.e_no
    fill_in "Exp", with: @status.exp
    fill_in "Fitly", with: @status.fitly
    fill_in "Funds", with: @status.funds
    fill_in "Generate No", with: @status.generate_no
    fill_in "Gunshot", with: @status.gunshot
    fill_in "Preparation", with: @status.preparation
    fill_in "Reaction", with: @status.reaction
    fill_in "Result No", with: @status.result_no
    fill_in "Rp", with: @status.rp
    fill_in "Struggle", with: @status.struggle
    click_on "Update Status"

    assert_text "Status was successfully updated"
    click_on "Back"
  end

  test "destroying a Status" do
    visit statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status was successfully destroyed"
  end
end
