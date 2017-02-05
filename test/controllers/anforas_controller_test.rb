require 'test_helper'

class AnforasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anfora = anforas(:one)
  end

  test "should get index" do
    get anforas_url
    assert_response :success
  end

  test "should get new" do
    get new_anfora_url
    assert_response :success
  end

  test "should create anfora" do
    assert_difference('Anfora.count') do
      post anforas_url, params: { anfora: { anfora_cobre: @anfora.anfora_cobre, anfora_y_cobre: @anfora.anfora_y_cobre } }
    end

    assert_redirected_to anfora_url(Anfora.last)
  end

  test "should show anfora" do
    get anfora_url(@anfora)
    assert_response :success
  end

  test "should get edit" do
    get edit_anfora_url(@anfora)
    assert_response :success
  end

  test "should update anfora" do
    patch anfora_url(@anfora), params: { anfora: { anfora_cobre: @anfora.anfora_cobre, anfora_y_cobre: @anfora.anfora_y_cobre } }
    assert_redirected_to anfora_url(@anfora)
  end

  test "should destroy anfora" do
    assert_difference('Anfora.count', -1) do
      delete anfora_url(@anfora)
    end

    assert_redirected_to anforas_url
  end
end
