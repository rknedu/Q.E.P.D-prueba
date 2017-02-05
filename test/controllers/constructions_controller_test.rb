require 'test_helper'

class ConstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction = constructions(:one)
  end

  test "should get index" do
    get constructions_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_url
    assert_response :success
  end

  test "should create construction" do
    assert_difference('Construction.count') do
      post constructions_url, params: { construction: { incluye_grabado: @construction.incluye_grabado, material: @construction.material, terminacion: @construction.terminacion, tipo: @construction.tipo } }
    end

    assert_redirected_to construction_url(Construction.last)
  end

  test "should show construction" do
    get construction_url(@construction)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_url(@construction)
    assert_response :success
  end

  test "should update construction" do
    patch construction_url(@construction), params: { construction: { incluye_grabado: @construction.incluye_grabado, material: @construction.material, terminacion: @construction.terminacion, tipo: @construction.tipo } }
    assert_redirected_to construction_url(@construction)
  end

  test "should destroy construction" do
    assert_difference('Construction.count', -1) do
      delete construction_url(@construction)
    end

    assert_redirected_to constructions_url
  end
end
