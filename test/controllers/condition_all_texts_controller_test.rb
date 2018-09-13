require 'test_helper'

class ConditionAllTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition_all_text = condition_all_texts(:one)
  end

  test "should get index" do
    get condition_all_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_condition_all_text_url
    assert_response :success
  end

  test "should create condition_all_text" do
    assert_difference('ConditionAllText.count') do
      post condition_all_texts_url, params: { condition_all_text: { condition_text: @condition_all_text.condition_text, e_no: @condition_all_text.e_no, generate_no: @condition_all_text.generate_no, result_no: @condition_all_text.result_no } }
    end

    assert_redirected_to condition_all_text_url(ConditionAllText.last)
  end

  test "should show condition_all_text" do
    get condition_all_text_url(@condition_all_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_condition_all_text_url(@condition_all_text)
    assert_response :success
  end

  test "should update condition_all_text" do
    patch condition_all_text_url(@condition_all_text), params: { condition_all_text: { condition_text: @condition_all_text.condition_text, e_no: @condition_all_text.e_no, generate_no: @condition_all_text.generate_no, result_no: @condition_all_text.result_no } }
    assert_redirected_to condition_all_text_url(@condition_all_text)
  end

  test "should destroy condition_all_text" do
    assert_difference('ConditionAllText.count', -1) do
      delete condition_all_text_url(@condition_all_text)
    end

    assert_redirected_to condition_all_texts_url
  end
end
