require 'test_helper'

class VelatoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @velatorio = velatorios(:one)
  end

  test "should get index" do
    get velatorios_url
    assert_response :success
  end

  test "should get new" do
    get new_velatorio_url
    assert_response :success
  end

  test "should create velatorio" do
    assert_difference('Velatorio.count') do
      post velatorios_url, params: { velatorio: { asesor_a_domicilio: @velatorio.asesor_a_domicilio, aviso_prensa: @velatorio.aviso_prensa, cafeteria: @velatorio.cafeteria, cirios: @velatorio.cirios, coro: @velatorio.coro, cruz: @velatorio.cruz, flores_cubre_urna: @velatorio.flores_cubre_urna, flores_en_canasto: @velatorio.flores_en_canasto, integer: @velatorio.integer, libro_de_condolencias: @velatorio.libro_de_condolencias, parroco: @velatorio.parroco, portacirios: @velatorio.portacirios, sala_de_velatorio: @velatorio.sala_de_velatorio, tarjeta_agradecimiento: @velatorio.tarjeta_agradecimiento, tramites_defuncion: @velatorio.tramites_defuncion } }
    end

    assert_redirected_to velatorio_url(Velatorio.last)
  end

  test "should show velatorio" do
    get velatorio_url(@velatorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_velatorio_url(@velatorio)
    assert_response :success
  end

  test "should update velatorio" do
    patch velatorio_url(@velatorio), params: { velatorio: { asesor_a_domicilio: @velatorio.asesor_a_domicilio, aviso_prensa: @velatorio.aviso_prensa, cafeteria: @velatorio.cafeteria, cirios: @velatorio.cirios, coro: @velatorio.coro, cruz: @velatorio.cruz, flores_cubre_urna: @velatorio.flores_cubre_urna, flores_en_canasto: @velatorio.flores_en_canasto, integer: @velatorio.integer, libro_de_condolencias: @velatorio.libro_de_condolencias, parroco: @velatorio.parroco, portacirios: @velatorio.portacirios, sala_de_velatorio: @velatorio.sala_de_velatorio, tarjeta_agradecimiento: @velatorio.tarjeta_agradecimiento, tramites_defuncion: @velatorio.tramites_defuncion } }
    assert_redirected_to velatorio_url(@velatorio)
  end

  test "should destroy velatorio" do
    assert_difference('Velatorio.count', -1) do
      delete velatorio_url(@velatorio)
    end

    assert_redirected_to velatorios_url
  end
end
