require "application_system_test_case"

class AssemblyNumsTest < ApplicationSystemTestCase
  setup do
    @assembly_num = assembly_nums(:one)
  end

  test "visiting the index" do
    visit assembly_nums_url
    assert_selector "h1", text: "Assembly Nums"
  end

  test "creating a Assembly num" do
    visit assembly_nums_url
    click_on "New Assembly Num"

    fill_in "Division Type", with: @assembly_num.division_type
    fill_in "E No", with: @assembly_num.e_no
    fill_in "Generate No", with: @assembly_num.generate_no
    fill_in "Num", with: @assembly_num.num
    fill_in "Proper Name", with: @assembly_num.proper_name_id
    fill_in "Result No", with: @assembly_num.result_no
    click_on "Create Assembly num"

    assert_text "Assembly num was successfully created"
    click_on "Back"
  end

  test "updating a Assembly num" do
    visit assembly_nums_url
    click_on "Edit", match: :first

    fill_in "Division Type", with: @assembly_num.division_type
    fill_in "E No", with: @assembly_num.e_no
    fill_in "Generate No", with: @assembly_num.generate_no
    fill_in "Num", with: @assembly_num.num
    fill_in "Proper Name", with: @assembly_num.proper_name_id
    fill_in "Result No", with: @assembly_num.result_no
    click_on "Update Assembly num"

    assert_text "Assembly num was successfully updated"
    click_on "Back"
  end

  test "destroying a Assembly num" do
    visit assembly_nums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assembly num was successfully destroyed"
  end
end
