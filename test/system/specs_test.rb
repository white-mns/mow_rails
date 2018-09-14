require "application_system_test_case"

class SpecsTest < ApplicationSystemTestCase
  setup do
    @spec = specs(:one)
  end

  test "visiting the index" do
    visit specs_url
    assert_selector "h1", text: "Specs"
  end

  test "creating a Spec" do
    visit specs_url
    click_on "New Spec"

    fill_in "Aerosol", with: @spec.aerosol
    fill_in "Ap", with: @spec.ap
    fill_in "E No", with: @spec.e_no
    fill_in "Electric", with: @spec.electric
    fill_in "En", with: @spec.en
    fill_in "En Recovery", with: @spec.en_recovery
    fill_in "Flame", with: @spec.flame
    fill_in "Generate No", with: @spec.generate_no
    fill_in "Jump", with: @spec.jump
    fill_in "Loading", with: @spec.loading
    fill_in "Max Loading", with: @spec.max_loading
    fill_in "Max Power", with: @spec.max_power
    fill_in "Movement", with: @spec.movement
    fill_in "Particle", with: @spec.particle
    fill_in "Precision", with: @spec.precision
    fill_in "Punding", with: @spec.punding
    fill_in "Pysics", with: @spec.pysics
    fill_in "Result No", with: @spec.result_no
    fill_in "Search", with: @spec.search
    fill_in "Spirit", with: @spec.spirit
    fill_in "Turning Speed", with: @spec.turning_speed
    fill_in "Weight", with: @spec.weight
    click_on "Create Spec"

    assert_text "Spec was successfully created"
    click_on "Back"
  end

  test "updating a Spec" do
    visit specs_url
    click_on "Edit", match: :first

    fill_in "Aerosol", with: @spec.aerosol
    fill_in "Ap", with: @spec.ap
    fill_in "E No", with: @spec.e_no
    fill_in "Electric", with: @spec.electric
    fill_in "En", with: @spec.en
    fill_in "En Recovery", with: @spec.en_recovery
    fill_in "Flame", with: @spec.flame
    fill_in "Generate No", with: @spec.generate_no
    fill_in "Jump", with: @spec.jump
    fill_in "Loading", with: @spec.loading
    fill_in "Max Loading", with: @spec.max_loading
    fill_in "Max Power", with: @spec.max_power
    fill_in "Movement", with: @spec.movement
    fill_in "Particle", with: @spec.particle
    fill_in "Precision", with: @spec.precision
    fill_in "Punding", with: @spec.punding
    fill_in "Pysics", with: @spec.pysics
    fill_in "Result No", with: @spec.result_no
    fill_in "Search", with: @spec.search
    fill_in "Spirit", with: @spec.spirit
    fill_in "Turning Speed", with: @spec.turning_speed
    fill_in "Weight", with: @spec.weight
    click_on "Update Spec"

    assert_text "Spec was successfully updated"
    click_on "Back"
  end

  test "destroying a Spec" do
    visit specs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spec was successfully destroyed"
  end
end
