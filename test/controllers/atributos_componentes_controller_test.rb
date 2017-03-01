require 'test_helper'

class AtributosComponentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atributos_componente = atributos_componentes(:one)
  end

  test "should get index" do
    get atributos_componentes_url
    assert_response :success
  end

  test "should get new" do
    get new_atributos_componente_url
    assert_response :success
  end

  test "should create atributos_componente" do
    assert_difference('AtributosComponente.count') do
      post atributos_componentes_url, params: { atributos_componente: { atributo_id: @atributos_componente.atributo_id, componente_id: @atributos_componente.componente_id } }
    end

    assert_redirected_to atributos_componente_url(AtributosComponente.last)
  end

  test "should show atributos_componente" do
    get atributos_componente_url(@atributos_componente)
    assert_response :success
  end

  test "should get edit" do
    get edit_atributos_componente_url(@atributos_componente)
    assert_response :success
  end

  test "should update atributos_componente" do
    patch atributos_componente_url(@atributos_componente), params: { atributos_componente: { atributo_id: @atributos_componente.atributo_id, componente_id: @atributos_componente.componente_id } }
    assert_redirected_to atributos_componente_url(@atributos_componente)
  end

  test "should destroy atributos_componente" do
    assert_difference('AtributosComponente.count', -1) do
      delete atributos_componente_url(@atributos_componente)
    end

    assert_redirected_to atributos_componentes_url
  end
end
