require 'test_helper'

class AtributosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atributo = atributos(:one)
  end

  test "should get index" do
    get atributos_url
    assert_response :success
  end

  test "should get new" do
    get new_atributo_url
    assert_response :success
  end

  test "should create atributo" do
    assert_difference('Atributo.count') do
      post atributos_url, params: { atributo: { nombre: @atributo.nombre, tipo_atributo_id: @atributo.tipo_atributo_id } }
    end

    assert_redirected_to atributo_url(Atributo.last)
  end

  test "should show atributo" do
    get atributo_url(@atributo)
    assert_response :success
  end

  test "should get edit" do
    get edit_atributo_url(@atributo)
    assert_response :success
  end

  test "should update atributo" do
    patch atributo_url(@atributo), params: { atributo: { nombre: @atributo.nombre, tipo_atributo_id: @atributo.tipo_atributo_id } }
    assert_redirected_to atributo_url(@atributo)
  end

  test "should destroy atributo" do
    assert_difference('Atributo.count', -1) do
      delete atributo_url(@atributo)
    end

    assert_redirected_to atributos_url
  end
end
