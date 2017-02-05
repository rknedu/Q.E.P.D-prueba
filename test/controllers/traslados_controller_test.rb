require 'test_helper'

class TrasladosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traslado = traslados(:one)
  end

  test "should get index" do
    get traslados_url
    assert_response :success
  end

  test "should get new" do
    get new_traslado_url
    assert_response :success
  end

  test "should create traslado" do
    assert_difference('Traslado.count') do
      post traslados_url, params: { traslado: { capacidad_pasajeros: @traslado.capacidad_pasajeros, carroza_de_instalacion: @traslado.carroza_de_instalacion, carroza_funeral: @traslado.carroza_funeral, carroza_para_flores: @traslado.carroza_para_flores, vehiculo_acompanamiento: @traslado.vehiculo_acompaÇñamiento } }
    end

    assert_redirected_to traslado_url(Traslado.last)
  end

  test "should show traslado" do
    get traslado_url(@traslado)
    assert_response :success
  end

  test "should get edit" do
    get edit_traslado_url(@traslado)
    assert_response :success
  end

  test "should update traslado" do
    patch traslado_url(@traslado), params: { traslado: { capacidad_pasajeros: @traslado.capacidad_pasajeros, carroza_de_instalacion: @traslado.carroza_de_instalacion, carroza_funeral: @traslado.carroza_funeral, carroza_para_flores: @traslado.carroza_para_flores, vehiculo_acompanamiento: @traslado.vehiculo_acompaÇñamiento } }
    assert_redirected_to traslado_url(@traslado)
  end

  test "should destroy traslado" do
    assert_difference('Traslado.count', -1) do
      delete traslado_url(@traslado)
    end

    assert_redirected_to traslados_url
  end
end
