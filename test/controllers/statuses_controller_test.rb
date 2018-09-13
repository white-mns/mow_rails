require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status = statuses(:one)
  end

  test "should get index" do
    get statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_status_url
    assert_response :success
  end

  test "should create status" do
    assert_difference('Status.count') do
      post statuses_url, params: { status: { acc_reward: @status.acc_reward, control: @status.control, e_no: @status.e_no, exp: @status.exp, fitly: @status.fitly, funds: @status.funds, generate_no: @status.generate_no, gunshot: @status.gunshot, preparation: @status.preparation, reaction: @status.reaction, result_no: @status.result_no, rp: @status.rp, struggle: @status.struggle } }
    end

    assert_redirected_to status_url(Status.last)
  end

  test "should show status" do
    get status_url(@status)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_url(@status)
    assert_response :success
  end

  test "should update status" do
    patch status_url(@status), params: { status: { acc_reward: @status.acc_reward, control: @status.control, e_no: @status.e_no, exp: @status.exp, fitly: @status.fitly, funds: @status.funds, generate_no: @status.generate_no, gunshot: @status.gunshot, preparation: @status.preparation, reaction: @status.reaction, result_no: @status.result_no, rp: @status.rp, struggle: @status.struggle } }
    assert_redirected_to status_url(@status)
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete status_url(@status)
    end

    assert_redirected_to statuses_url
  end
end
