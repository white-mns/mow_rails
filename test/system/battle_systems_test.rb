require "application_system_test_case"

class BattleSystemsTest < ApplicationSystemTestCase
  setup do
    @battle_system = battle_systems(:one)
  end

  test "visiting the index" do
    visit battle_systems_url
    assert_selector "h1", text: "Battle Systems"
  end

  test "creating a Battle system" do
    visit battle_systems_url
    click_on "New Battle System"

    fill_in "Battle System", with: @battle_system.battle_system
    fill_in "E No", with: @battle_system.e_no
    fill_in "Generate No", with: @battle_system.generate_no
    fill_in "Result No", with: @battle_system.result_no
    click_on "Create Battle system"

    assert_text "Battle system was successfully created"
    click_on "Back"
  end

  test "updating a Battle system" do
    visit battle_systems_url
    click_on "Edit", match: :first

    fill_in "Battle System", with: @battle_system.battle_system
    fill_in "E No", with: @battle_system.e_no
    fill_in "Generate No", with: @battle_system.generate_no
    fill_in "Result No", with: @battle_system.result_no
    click_on "Update Battle system"

    assert_text "Battle system was successfully updated"
    click_on "Back"
  end

  test "destroying a Battle system" do
    visit battle_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battle system was successfully destroyed"
  end
end
