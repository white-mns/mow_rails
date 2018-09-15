require 'test_helper'

class ConsortPlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consort_plane = consort_planes(:one)
  end

  test "should get index" do
    get consort_planes_url
    assert_response :success
  end

  test "should get new" do
    get new_consort_plane_url
    assert_response :success
  end

  test "should create consort_plane" do
    assert_difference('ConsortPlane.count') do
      post consort_planes_url, params: { consort_plane: { consort_plane: @consort_plane.consort_plane, e_no: @consort_plane.e_no, generate_no: @consort_plane.generate_no, result_no: @consort_plane.result_no } }
    end

    assert_redirected_to consort_plane_url(ConsortPlane.last)
  end

  test "should show consort_plane" do
    get consort_plane_url(@consort_plane)
    assert_response :success
  end

  test "should get edit" do
    get edit_consort_plane_url(@consort_plane)
    assert_response :success
  end

  test "should update consort_plane" do
    patch consort_plane_url(@consort_plane), params: { consort_plane: { consort_plane: @consort_plane.consort_plane, e_no: @consort_plane.e_no, generate_no: @consort_plane.generate_no, result_no: @consort_plane.result_no } }
    assert_redirected_to consort_plane_url(@consort_plane)
  end

  test "should destroy consort_plane" do
    assert_difference('ConsortPlane.count', -1) do
      delete consort_plane_url(@consort_plane)
    end

    assert_redirected_to consort_planes_url
  end
end
