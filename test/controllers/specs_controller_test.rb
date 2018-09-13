require 'test_helper'

class SpecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spec = specs(:one)
  end

  test "should get index" do
    get specs_url
    assert_response :success
  end

  test "should get new" do
    get new_spec_url
    assert_response :success
  end

  test "should create spec" do
    assert_difference('Spec.count') do
      post specs_url, params: { spec: { aerosol: @spec.aerosol, ap: @spec.ap, e_no: @spec.e_no, electric: @spec.electric, en: @spec.en, en_recovery: @spec.en_recovery, flame: @spec.flame, generate_no: @spec.generate_no, jump: @spec.jump, loading: @spec.loading, max_loading: @spec.max_loading, max_power: @spec.max_power, movement: @spec.movement, particle: @spec.particle, precision: @spec.precision, punding: @spec.punding, pysics: @spec.pysics, result_no: @spec.result_no, search: @spec.search, spirit: @spec.spirit, turning_speed: @spec.turning_speed, weight: @spec.weight } }
    end

    assert_redirected_to spec_url(Spec.last)
  end

  test "should show spec" do
    get spec_url(@spec)
    assert_response :success
  end

  test "should get edit" do
    get edit_spec_url(@spec)
    assert_response :success
  end

  test "should update spec" do
    patch spec_url(@spec), params: { spec: { aerosol: @spec.aerosol, ap: @spec.ap, e_no: @spec.e_no, electric: @spec.electric, en: @spec.en, en_recovery: @spec.en_recovery, flame: @spec.flame, generate_no: @spec.generate_no, jump: @spec.jump, loading: @spec.loading, max_loading: @spec.max_loading, max_power: @spec.max_power, movement: @spec.movement, particle: @spec.particle, precision: @spec.precision, punding: @spec.punding, pysics: @spec.pysics, result_no: @spec.result_no, search: @spec.search, spirit: @spec.spirit, turning_speed: @spec.turning_speed, weight: @spec.weight } }
    assert_redirected_to spec_url(@spec)
  end

  test "should destroy spec" do
    assert_difference('Spec.count', -1) do
      delete spec_url(@spec)
    end

    assert_redirected_to specs_url
  end
end
