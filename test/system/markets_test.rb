require "application_system_test_case"

class MarketsTest < ApplicationSystemTestCase
  setup do
    @market = markets(:one)
  end

  test "visiting the index" do
    visit markets_url
    assert_selector "h1", text: "Markets"
  end

  test "creating a Market" do
    visit markets_url
    click_on "New Market"

    fill_in "Add Abnormity", with: @market.add_abnormity
    fill_in "Aerosol", with: @market.aerosol
    fill_in "Ammunition Cost", with: @market.ammunition_cost
    fill_in "Ap", with: @market.ap
    fill_in "Bullet", with: @market.bullet
    fill_in "Charge", with: @market.charge
    fill_in "Control", with: @market.control
    fill_in "E No", with: @market.e_no
    fill_in "Equip", with: @market.equip
    fill_in "Fitly", with: @market.fitly
    fill_in "Fuka 1", with: @market.fuka_1
    fill_in "Fuka 2", with: @market.fuka_2
    fill_in "Generate No", with: @market.generate_no
    fill_in "Guard Elemental", with: @market.guard_elemental
    fill_in "Guard Value", with: @market.guard_value
    fill_in "Gunshot", with: @market.gunshot
    fill_in "Kind", with: @market.kind
    fill_in "Loading", with: @market.loading
    fill_in "Market No", with: @market.market_no
    fill_in "Name", with: @market.name
    fill_in "Orig Name", with: @market.orig_name
    fill_in "Precision", with: @market.precision
    fill_in "Preparation", with: @market.preparation
    fill_in "Punding", with: @market.punding
    fill_in "Reaction", with: @market.reaction
    fill_in "Result No", with: @market.result_no
    fill_in "Spending En", with: @market.spending_en
    fill_in "Strength", with: @market.strength
    fill_in "Struggle", with: @market.struggle
    fill_in "Turning Speed", with: @market.turning_speed
    fill_in "Type", with: @market.type
    fill_in "Unique 1", with: @market.unique_1
    fill_in "Unique 2", with: @market.unique_2
    fill_in "Value", with: @market.value
    fill_in "Weapon Element", with: @market.weapon_element
    fill_in "Weight", with: @market.weight
    click_on "Create Market"

    assert_text "Market was successfully created"
    click_on "Back"
  end

  test "updating a Market" do
    visit markets_url
    click_on "Edit", match: :first

    fill_in "Add Abnormity", with: @market.add_abnormity
    fill_in "Aerosol", with: @market.aerosol
    fill_in "Ammunition Cost", with: @market.ammunition_cost
    fill_in "Ap", with: @market.ap
    fill_in "Bullet", with: @market.bullet
    fill_in "Charge", with: @market.charge
    fill_in "Control", with: @market.control
    fill_in "E No", with: @market.e_no
    fill_in "Equip", with: @market.equip
    fill_in "Fitly", with: @market.fitly
    fill_in "Fuka 1", with: @market.fuka_1
    fill_in "Fuka 2", with: @market.fuka_2
    fill_in "Generate No", with: @market.generate_no
    fill_in "Guard Elemental", with: @market.guard_elemental
    fill_in "Guard Value", with: @market.guard_value
    fill_in "Gunshot", with: @market.gunshot
    fill_in "Kind", with: @market.kind
    fill_in "Loading", with: @market.loading
    fill_in "Market No", with: @market.market_no
    fill_in "Name", with: @market.name
    fill_in "Orig Name", with: @market.orig_name
    fill_in "Precision", with: @market.precision
    fill_in "Preparation", with: @market.preparation
    fill_in "Punding", with: @market.punding
    fill_in "Reaction", with: @market.reaction
    fill_in "Result No", with: @market.result_no
    fill_in "Spending En", with: @market.spending_en
    fill_in "Strength", with: @market.strength
    fill_in "Struggle", with: @market.struggle
    fill_in "Turning Speed", with: @market.turning_speed
    fill_in "Type", with: @market.type
    fill_in "Unique 1", with: @market.unique_1
    fill_in "Unique 2", with: @market.unique_2
    fill_in "Value", with: @market.value
    fill_in "Weapon Element", with: @market.weapon_element
    fill_in "Weight", with: @market.weight
    click_on "Update Market"

    assert_text "Market was successfully updated"
    click_on "Back"
  end

  test "destroying a Market" do
    visit markets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Market was successfully destroyed"
  end
end
