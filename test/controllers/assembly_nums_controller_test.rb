require 'test_helper'

class AssemblyNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assembly_num = assembly_nums(:one)
  end

  test "should get index" do
    get assembly_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_assembly_num_url
    assert_response :success
  end

  test "should create assembly_num" do
    assert_difference('AssemblyNum.count') do
      post assembly_nums_url, params: { assembly_num: { division_type: @assembly_num.division_type, e_no: @assembly_num.e_no, generate_no: @assembly_num.generate_no, num: @assembly_num.num, proper_name_id: @assembly_num.proper_name_id, result_no: @assembly_num.result_no } }
    end

    assert_redirected_to assembly_num_url(AssemblyNum.last)
  end

  test "should show assembly_num" do
    get assembly_num_url(@assembly_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_assembly_num_url(@assembly_num)
    assert_response :success
  end

  test "should update assembly_num" do
    patch assembly_num_url(@assembly_num), params: { assembly_num: { division_type: @assembly_num.division_type, e_no: @assembly_num.e_no, generate_no: @assembly_num.generate_no, num: @assembly_num.num, proper_name_id: @assembly_num.proper_name_id, result_no: @assembly_num.result_no } }
    assert_redirected_to assembly_num_url(@assembly_num)
  end

  test "should destroy assembly_num" do
    assert_difference('AssemblyNum.count', -1) do
      delete assembly_num_url(@assembly_num)
    end

    assert_redirected_to assembly_nums_url
  end
end
