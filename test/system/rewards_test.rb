require "application_system_test_case"

class RewardsTest < ApplicationSystemTestCase
  setup do
    @reward = rewards(:one)
  end

  test "visiting the index" do
    visit rewards_url
    assert_selector "h1", text: "Rewards"
  end

  test "creating a Reward" do
    visit rewards_url
    click_on "New Reward"

    fill_in "Add Income", with: @reward.add_income
    fill_in "Ammunition Cost", with: @reward.ammunition_cost
    fill_in "Attack", with: @reward.attack
    fill_in "Battle Income", with: @reward.battle_income
    fill_in "Colosseum Win", with: @reward.colosseum_win
    fill_in "Defeat", with: @reward.defeat
    fill_in "Defense", with: @reward.defense
    fill_in "E No", with: @reward.e_no
    fill_in "Enemy Caution", with: @reward.enemy_caution
    fill_in "Fight Money", with: @reward.fight_money
    fill_in "Generate No", with: @reward.generate_no
    fill_in "Parts Sell", with: @reward.parts_sell
    fill_in "Preparation Cost", with: @reward.preparation_cost
    fill_in "Preparation Deduction", with: @reward.preparation_deduction
    fill_in "Prize", with: @reward.prize
    fill_in "Result No", with: @reward.result_no
    fill_in "Selling", with: @reward.selling
    fill_in "Sub Quest", with: @reward.sub_quest
    fill_in "Support", with: @reward.support
    fill_in "Total Income", with: @reward.total_income
    fill_in "Union Cost", with: @reward.union_cost
    fill_in "Union Interest", with: @reward.union_interest
    click_on "Create Reward"

    assert_text "Reward was successfully created"
    click_on "Back"
  end

  test "updating a Reward" do
    visit rewards_url
    click_on "Edit", match: :first

    fill_in "Add Income", with: @reward.add_income
    fill_in "Ammunition Cost", with: @reward.ammunition_cost
    fill_in "Attack", with: @reward.attack
    fill_in "Battle Income", with: @reward.battle_income
    fill_in "Colosseum Win", with: @reward.colosseum_win
    fill_in "Defeat", with: @reward.defeat
    fill_in "Defense", with: @reward.defense
    fill_in "E No", with: @reward.e_no
    fill_in "Enemy Caution", with: @reward.enemy_caution
    fill_in "Fight Money", with: @reward.fight_money
    fill_in "Generate No", with: @reward.generate_no
    fill_in "Parts Sell", with: @reward.parts_sell
    fill_in "Preparation Cost", with: @reward.preparation_cost
    fill_in "Preparation Deduction", with: @reward.preparation_deduction
    fill_in "Prize", with: @reward.prize
    fill_in "Result No", with: @reward.result_no
    fill_in "Selling", with: @reward.selling
    fill_in "Sub Quest", with: @reward.sub_quest
    fill_in "Support", with: @reward.support
    fill_in "Total Income", with: @reward.total_income
    fill_in "Union Cost", with: @reward.union_cost
    fill_in "Union Interest", with: @reward.union_interest
    click_on "Update Reward"

    assert_text "Reward was successfully updated"
    click_on "Back"
  end

  test "destroying a Reward" do
    visit rewards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reward was successfully destroyed"
  end
end
