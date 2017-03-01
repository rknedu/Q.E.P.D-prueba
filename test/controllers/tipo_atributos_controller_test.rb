require 'test_helper'

class TipoAtributosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_atributo = tipo_atributos(:one)
  end

  test "should get index" do
    get tipo_atributos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_atributo_url
    assert_response :success
  end

  test "should create tipo_atributo" do
    assert_difference('TipoAtributo.count') do
      post tipo_atributos_url, params: { tipo_atributo: { nombre: @tipo_atributo.nombre } }
    end

    assert_redirected_to tipo_atributo_url(TipoAtributo.last)
  end

  test "should show tipo_atributo" do
    get tipo_atributo_url(@tipo_atributo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_atributo_url(@tipo_atributo)
    assert_response :success
  end

  test "should update tipo_atributo" do
    patch tipo_atributo_url(@tipo_atributo), params: { tipo_atributo: { nombre: @tipo_atributo.nombre } }
    assert_redirected_to tipo_atributo_url(@tipo_atributo)
  end

  test "should destroy tipo_atributo" do
    assert_difference('TipoAtributo.count', -1) do
      delete tipo_atributo_url(@tipo_atributo)
    end

    assert_redirected_to tipo_atributos_url
  end
end
