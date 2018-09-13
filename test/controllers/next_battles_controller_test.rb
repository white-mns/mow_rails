require 'test_helper'

class NextBattlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @next_battle = next_battles(:one)
  end

  test "should get index" do
    get next_battles_url
    assert_response :success
  end

  test "should get new" do
    get new_next_battle_url
    assert_response :success
  end

  test "should create next_battle" do
    assert_difference('NextBattle.count') do
      post next_battles_url, params: { next_battle: { block_no: @next_battle.block_no, e_no: @next_battle.e_no, generate_no: @next_battle.generate_no, result_no: @next_battle.result_no } }
    end

    assert_redirected_to next_battle_url(NextBattle.last)
  end

  test "should show next_battle" do
    get next_battle_url(@next_battle)
    assert_response :success
  end

  test "should get edit" do
    get edit_next_battle_url(@next_battle)
    assert_response :success
  end

  test "should update next_battle" do
    patch next_battle_url(@next_battle), params: { next_battle: { block_no: @next_battle.block_no, e_no: @next_battle.e_no, generate_no: @next_battle.generate_no, result_no: @next_battle.result_no } }
    assert_redirected_to next_battle_url(@next_battle)
  end

  test "should destroy next_battle" do
    assert_difference('NextBattle.count', -1) do
      delete next_battle_url(@next_battle)
    end

    assert_redirected_to next_battles_url
  end
end
