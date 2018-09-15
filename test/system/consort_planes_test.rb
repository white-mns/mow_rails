require "application_system_test_case"

class ConsortPlanesTest < ApplicationSystemTestCase
  setup do
    @consort_plane = consort_planes(:one)
  end

  test "visiting the index" do
    visit consort_planes_url
    assert_selector "h1", text: "Consort Planes"
  end

  test "creating a Consort plane" do
    visit consort_planes_url
    click_on "New Consort Plane"

    fill_in "Consort Plane", with: @consort_plane.consort_plane
    fill_in "E No", with: @consort_plane.e_no
    fill_in "Generate No", with: @consort_plane.generate_no
    fill_in "Result No", with: @consort_plane.result_no
    click_on "Create Consort plane"

    assert_text "Consort plane was successfully created"
    click_on "Back"
  end

  test "updating a Consort plane" do
    visit consort_planes_url
    click_on "Edit", match: :first

    fill_in "Consort Plane", with: @consort_plane.consort_plane
    fill_in "E No", with: @consort_plane.e_no
    fill_in "Generate No", with: @consort_plane.generate_no
    fill_in "Result No", with: @consort_plane.result_no
    click_on "Update Consort plane"

    assert_text "Consort plane was successfully updated"
    click_on "Back"
  end

  test "destroying a Consort plane" do
    visit consort_planes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consort plane was successfully destroyed"
  end
end
