require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Add Abnormity", with: @item.add_abnormity
    fill_in "Aerosol", with: @item.aerosol
    fill_in "Ammunition Cost", with: @item.ammunition_cost
    fill_in "Ap", with: @item.ap
    fill_in "Bullet", with: @item.bullet
    fill_in "Control", with: @item.control
    fill_in "Drunkenness", with: @item.drunkenness
    fill_in "E No", with: @item.e_no
    fill_in "Equip", with: @item.equip
    fill_in "Fitly", with: @item.fitly
    fill_in "Fuka 1", with: @item.fuka_1
    fill_in "Fuka 2", with: @item.fuka_2
    fill_in "Generate No", with: @item.generate_no
    fill_in "Guard Elemental", with: @item.guard_elemental
    fill_in "Guard Value", with: @item.guard_value
    fill_in "Gunshot", with: @item.gunshot
    fill_in "I No", with: @item.i_no
    fill_in "Kind", with: @item.kind
    fill_in "Loading", with: @item.loading
    fill_in "Name", with: @item.name
    fill_in "Orig Name", with: @item.orig_name
    fill_in "Precision", with: @item.precision
    fill_in "Preparation", with: @item.preparation
    fill_in "Punding", with: @item.punding
    fill_in "Reaction", with: @item.reaction
    fill_in "Result No", with: @item.result_no
    fill_in "Spending En", with: @item.spending_en
    fill_in "Strength", with: @item.strength
    fill_in "Struggle", with: @item.struggle
    fill_in "Turning Speed", with: @item.turning_speed
    fill_in "Unique 1", with: @item.unique_1
    fill_in "Unique 2", with: @item.unique_2
    fill_in "Value", with: @item.value
    fill_in "Weapon Element", with: @item.weapon_element
    fill_in "Weight", with: @item.weight
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Add Abnormity", with: @item.add_abnormity
    fill_in "Aerosol", with: @item.aerosol
    fill_in "Ammunition Cost", with: @item.ammunition_cost
    fill_in "Ap", with: @item.ap
    fill_in "Bullet", with: @item.bullet
    fill_in "Control", with: @item.control
    fill_in "Drunkenness", with: @item.drunkenness
    fill_in "E No", with: @item.e_no
    fill_in "Equip", with: @item.equip
    fill_in "Fitly", with: @item.fitly
    fill_in "Fuka 1", with: @item.fuka_1
    fill_in "Fuka 2", with: @item.fuka_2
    fill_in "Generate No", with: @item.generate_no
    fill_in "Guard Elemental", with: @item.guard_elemental
    fill_in "Guard Value", with: @item.guard_value
    fill_in "Gunshot", with: @item.gunshot
    fill_in "I No", with: @item.i_no
    fill_in "Kind", with: @item.kind
    fill_in "Loading", with: @item.loading
    fill_in "Name", with: @item.name
    fill_in "Orig Name", with: @item.orig_name
    fill_in "Precision", with: @item.precision
    fill_in "Preparation", with: @item.preparation
    fill_in "Punding", with: @item.punding
    fill_in "Reaction", with: @item.reaction
    fill_in "Result No", with: @item.result_no
    fill_in "Spending En", with: @item.spending_en
    fill_in "Strength", with: @item.strength
    fill_in "Struggle", with: @item.struggle
    fill_in "Turning Speed", with: @item.turning_speed
    fill_in "Unique 1", with: @item.unique_1
    fill_in "Unique 2", with: @item.unique_2
    fill_in "Value", with: @item.value
    fill_in "Weapon Element", with: @item.weapon_element
    fill_in "Weight", with: @item.weight
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
