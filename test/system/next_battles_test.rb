require "application_system_test_case"

class NextBattlesTest < ApplicationSystemTestCase
  setup do
    @next_battle = next_battles(:one)
  end

  test "visiting the index" do
    visit next_battles_url
    assert_selector "h1", text: "Next Battles"
  end

  test "creating a Next battle" do
    visit next_battles_url
    click_on "New Next Battle"

    fill_in "Block No", with: @next_battle.block_no
    fill_in "E No", with: @next_battle.e_no
    fill_in "Generate No", with: @next_battle.generate_no
    fill_in "Result No", with: @next_battle.result_no
    click_on "Create Next battle"

    assert_text "Next battle was successfully created"
    click_on "Back"
  end

  test "updating a Next battle" do
    visit next_battles_url
    click_on "Edit", match: :first

    fill_in "Block No", with: @next_battle.block_no
    fill_in "E No", with: @next_battle.e_no
    fill_in "Generate No", with: @next_battle.generate_no
    fill_in "Result No", with: @next_battle.result_no
    click_on "Update Next battle"

    assert_text "Next battle was successfully updated"
    click_on "Back"
  end

  test "destroying a Next battle" do
    visit next_battles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Next battle was successfully destroyed"
  end
end
