require 'test_helper'

class TransitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transition = transitions(:one)
  end

  test "should get index" do
    get transitions_url
    assert_response :success
  end

  test "should get new" do
    get new_transition_url
    assert_response :success
  end

  test "should create transition" do
    assert_difference('Transition.count') do
      post transitions_url, params: { transition: { act: @transition.act, block_no: @transition.block_no, data_type: @transition.data_type, e_no: @transition.e_no, generate_no: @transition.generate_no, result_no: @transition.result_no, turn: @transition.turn, value: @transition.value } }
    end

    assert_redirected_to transition_url(Transition.last)
  end

  test "should show transition" do
    get transition_url(@transition)
    assert_response :success
  end

  test "should get edit" do
    get edit_transition_url(@transition)
    assert_response :success
  end

  test "should update transition" do
    patch transition_url(@transition), params: { transition: { act: @transition.act, block_no: @transition.block_no, data_type: @transition.data_type, e_no: @transition.e_no, generate_no: @transition.generate_no, result_no: @transition.result_no, turn: @transition.turn, value: @transition.value } }
    assert_redirected_to transition_url(@transition)
  end

  test "should destroy transition" do
    assert_difference('Transition.count', -1) do
      delete transition_url(@transition)
    end

    assert_redirected_to transitions_url
  end
end
