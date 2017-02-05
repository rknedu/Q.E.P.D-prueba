require 'test_helper'

class UrnasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urna = urnas(:one)
  end

  test "should get index" do
    get urnas_url
    assert_response :success
  end

  test "should get new" do
    get new_urna_url
    assert_response :success
  end

  test "should create urna" do
    assert_difference('Urna.count') do
      post urnas_url, params: { urna: { color: @urna.color, material: @urna.material, medida: @urna.medida, modelo: @urna.modelo, terminacion: @urna.terminacion } }
    end

    assert_redirected_to urna_url(Urna.last)
  end

  test "should show urna" do
    get urna_url(@urna)
    assert_response :success
  end

  test "should get edit" do
    get edit_urna_url(@urna)
    assert_response :success
  end

  test "should update urna" do
    patch urna_url(@urna), params: { urna: { color: @urna.color, material: @urna.material, medida: @urna.medida, modelo: @urna.modelo, terminacion: @urna.terminacion } }
    assert_redirected_to urna_url(@urna)
  end

  test "should destroy urna" do
    assert_difference('Urna.count', -1) do
      delete urna_url(@urna)
    end

    assert_redirected_to urnas_url
  end
end
