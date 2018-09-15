require 'test_helper'

class BattleSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle_system = battle_systems(:one)
  end

  test "should get index" do
    get battle_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_battle_system_url
    assert_response :success
  end

  test "should create battle_system" do
    assert_difference('BattleSystem.count') do
      post battle_systems_url, params: { battle_system: { battle_system: @battle_system.battle_system, e_no: @battle_system.e_no, generate_no: @battle_system.generate_no, result_no: @battle_system.result_no } }
    end

    assert_redirected_to battle_system_url(BattleSystem.last)
  end

  test "should show battle_system" do
    get battle_system_url(@battle_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_battle_system_url(@battle_system)
    assert_response :success
  end

  test "should update battle_system" do
    patch battle_system_url(@battle_system), params: { battle_system: { battle_system: @battle_system.battle_system, e_no: @battle_system.e_no, generate_no: @battle_system.generate_no, result_no: @battle_system.result_no } }
    assert_redirected_to battle_system_url(@battle_system)
  end

  test "should destroy battle_system" do
    assert_difference('BattleSystem.count', -1) do
      delete battle_system_url(@battle_system)
    end

    assert_redirected_to battle_systems_url
  end
end
