require 'test_helper'

class MarketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @market = markets(:one)
  end

  test "should get index" do
    get markets_url
    assert_response :success
  end

  test "should get new" do
    get new_market_url
    assert_response :success
  end

  test "should create market" do
    assert_difference('Market.count') do
      post markets_url, params: { market: { add_abnormity: @market.add_abnormity, aerosol: @market.aerosol, ammunition_cost: @market.ammunition_cost, ap: @market.ap, bullet: @market.bullet, charge: @market.charge, control: @market.control, e_no: @market.e_no, equip: @market.equip, fitly: @market.fitly, fuka_1: @market.fuka_1, fuka_2: @market.fuka_2, generate_no: @market.generate_no, guard_elemental: @market.guard_elemental, guard_value: @market.guard_value, gunshot: @market.gunshot, kind: @market.kind, loading: @market.loading, market_no: @market.market_no, name: @market.name, orig_name: @market.orig_name, precision: @market.precision, preparation: @market.preparation, punding: @market.punding, reaction: @market.reaction, result_no: @market.result_no, spending_en: @market.spending_en, strength: @market.strength, struggle: @market.struggle, turning_speed: @market.turning_speed, type: @market.type, unique_1: @market.unique_1, unique_2: @market.unique_2, value: @market.value, weapon_element: @market.weapon_element, weight: @market.weight } }
    end

    assert_redirected_to market_url(Market.last)
  end

  test "should show market" do
    get market_url(@market)
    assert_response :success
  end

  test "should get edit" do
    get edit_market_url(@market)
    assert_response :success
  end

  test "should update market" do
    patch market_url(@market), params: { market: { add_abnormity: @market.add_abnormity, aerosol: @market.aerosol, ammunition_cost: @market.ammunition_cost, ap: @market.ap, bullet: @market.bullet, charge: @market.charge, control: @market.control, e_no: @market.e_no, equip: @market.equip, fitly: @market.fitly, fuka_1: @market.fuka_1, fuka_2: @market.fuka_2, generate_no: @market.generate_no, guard_elemental: @market.guard_elemental, guard_value: @market.guard_value, gunshot: @market.gunshot, kind: @market.kind, loading: @market.loading, market_no: @market.market_no, name: @market.name, orig_name: @market.orig_name, precision: @market.precision, preparation: @market.preparation, punding: @market.punding, reaction: @market.reaction, result_no: @market.result_no, spending_en: @market.spending_en, strength: @market.strength, struggle: @market.struggle, turning_speed: @market.turning_speed, type: @market.type, unique_1: @market.unique_1, unique_2: @market.unique_2, value: @market.value, weapon_element: @market.weapon_element, weight: @market.weight } }
    assert_redirected_to market_url(@market)
  end

  test "should destroy market" do
    assert_difference('Market.count', -1) do
      delete market_url(@market)
    end

    assert_redirected_to markets_url
  end
end
