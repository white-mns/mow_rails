require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { add_abnormity: @item.add_abnormity, aerosol: @item.aerosol, ammunition_cost: @item.ammunition_cost, ap: @item.ap, bullet: @item.bullet, control: @item.control, drunkenness: @item.drunkenness, e_no: @item.e_no, equip: @item.equip, fitly: @item.fitly, fuka_1: @item.fuka_1, fuka_2: @item.fuka_2, generate_no: @item.generate_no, guard_elemental: @item.guard_elemental, guard_value: @item.guard_value, gunshot: @item.gunshot, i_no: @item.i_no, kind: @item.kind, loading: @item.loading, name: @item.name, orig_name: @item.orig_name, precision: @item.precision, preparation: @item.preparation, punding: @item.punding, reaction: @item.reaction, result_no: @item.result_no, spending_en: @item.spending_en, strength: @item.strength, struggle: @item.struggle, turning_speed: @item.turning_speed, unique_1: @item.unique_1, unique_2: @item.unique_2, value: @item.value, weapon_element: @item.weapon_element, weight: @item.weight } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { add_abnormity: @item.add_abnormity, aerosol: @item.aerosol, ammunition_cost: @item.ammunition_cost, ap: @item.ap, bullet: @item.bullet, control: @item.control, drunkenness: @item.drunkenness, e_no: @item.e_no, equip: @item.equip, fitly: @item.fitly, fuka_1: @item.fuka_1, fuka_2: @item.fuka_2, generate_no: @item.generate_no, guard_elemental: @item.guard_elemental, guard_value: @item.guard_value, gunshot: @item.gunshot, i_no: @item.i_no, kind: @item.kind, loading: @item.loading, name: @item.name, orig_name: @item.orig_name, precision: @item.precision, preparation: @item.preparation, punding: @item.punding, reaction: @item.reaction, result_no: @item.result_no, spending_en: @item.spending_en, strength: @item.strength, struggle: @item.struggle, turning_speed: @item.turning_speed, unique_1: @item.unique_1, unique_2: @item.unique_2, value: @item.value, weapon_element: @item.weapon_element, weight: @item.weight } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
