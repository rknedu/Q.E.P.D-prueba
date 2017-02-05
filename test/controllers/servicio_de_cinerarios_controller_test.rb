require 'test_helper'

class ServicioDeCinerariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servicio_de_cinerario = servicio_de_cinerarios(:one)
  end

  test "should get index" do
    get servicio_de_cinerarios_url
    assert_response :success
  end

  test "should get new" do
    get new_servicio_de_cinerario_url
    assert_response :success
  end

  test "should create servicio_de_cinerario" do
    assert_difference('ServicioDeCinerario.count') do
      post servicio_de_cinerarios_url, params: { servicio_de_cinerario: { amplificacion: @servicio_de_cinerario.amplificacion, anfora_incluida: @servicio_de_cinerario.anfora_incluida, cafeteria: @servicio_de_cinerario.cafeteria, capilla: @servicio_de_cinerario.capilla, ceremonia_entre_cenizas: @servicio_de_cinerario.ceremonia_entre_cenizas, coro: @servicio_de_cinerario.coro, diacono: @servicio_de_cinerario.diacono, liturgia-responso: @servicio_de_cinerario.liturgia-responso, podium: @servicio_de_cinerario.podium, sala_de_velatorio: @servicio_de_cinerario.sala_de_velatorio } }
    end

    assert_redirected_to servicio_de_cinerario_url(ServicioDeCinerario.last)
  end

  test "should show servicio_de_cinerario" do
    get servicio_de_cinerario_url(@servicio_de_cinerario)
    assert_response :success
  end

  test "should get edit" do
    get edit_servicio_de_cinerario_url(@servicio_de_cinerario)
    assert_response :success
  end

  test "should update servicio_de_cinerario" do
    patch servicio_de_cinerario_url(@servicio_de_cinerario), params: { servicio_de_cinerario: { amplificacion: @servicio_de_cinerario.amplificacion, anfora_incluida: @servicio_de_cinerario.anfora_incluida, cafeteria: @servicio_de_cinerario.cafeteria, capilla: @servicio_de_cinerario.capilla, ceremonia_entre_cenizas: @servicio_de_cinerario.ceremonia_entre_cenizas, coro: @servicio_de_cinerario.coro, diacono: @servicio_de_cinerario.diacono, liturgia-responso: @servicio_de_cinerario.liturgia-responso, podium: @servicio_de_cinerario.podium, sala_de_velatorio: @servicio_de_cinerario.sala_de_velatorio } }
    assert_redirected_to servicio_de_cinerario_url(@servicio_de_cinerario)
  end

  test "should destroy servicio_de_cinerario" do
    assert_difference('ServicioDeCinerario.count', -1) do
      delete servicio_de_cinerario_url(@servicio_de_cinerario)
    end

    assert_redirected_to servicio_de_cinerarios_url
  end
end
