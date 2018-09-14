require 'test_helper'

class RewardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward = rewards(:one)
  end

  test "should get index" do
    get rewards_url
    assert_response :success
  end

  test "should get new" do
    get new_reward_url
    assert_response :success
  end

  test "should create reward" do
    assert_difference('Reward.count') do
      post rewards_url, params: { reward: { add_income: @reward.add_income, ammunition_cost: @reward.ammunition_cost, attack: @reward.attack, battle_income: @reward.battle_income, colosseum_win: @reward.colosseum_win, defeat: @reward.defeat, defense: @reward.defense, e_no: @reward.e_no, enemy_caution: @reward.enemy_caution, fight_money: @reward.fight_money, generate_no: @reward.generate_no, parts_sell: @reward.parts_sell, preparation_cost: @reward.preparation_cost, preparation_deduction: @reward.preparation_deduction, prize: @reward.prize, result_no: @reward.result_no, selling: @reward.selling, sub_quest: @reward.sub_quest, support: @reward.support, total_income: @reward.total_income, union_cost: @reward.union_cost, union_interest: @reward.union_interest } }
    end

    assert_redirected_to reward_url(Reward.last)
  end

  test "should show reward" do
    get reward_url(@reward)
    assert_response :success
  end

  test "should get edit" do
    get edit_reward_url(@reward)
    assert_response :success
  end

  test "should update reward" do
    patch reward_url(@reward), params: { reward: { add_income: @reward.add_income, ammunition_cost: @reward.ammunition_cost, attack: @reward.attack, battle_income: @reward.battle_income, colosseum_win: @reward.colosseum_win, defeat: @reward.defeat, defense: @reward.defense, e_no: @reward.e_no, enemy_caution: @reward.enemy_caution, fight_money: @reward.fight_money, generate_no: @reward.generate_no, parts_sell: @reward.parts_sell, preparation_cost: @reward.preparation_cost, preparation_deduction: @reward.preparation_deduction, prize: @reward.prize, result_no: @reward.result_no, selling: @reward.selling, sub_quest: @reward.sub_quest, support: @reward.support, total_income: @reward.total_income, union_cost: @reward.union_cost, union_interest: @reward.union_interest } }
    assert_redirected_to reward_url(@reward)
  end

  test "should destroy reward" do
    assert_difference('Reward.count', -1) do
      delete reward_url(@reward)
    end

    assert_redirected_to rewards_url
  end
end
