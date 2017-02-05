require 'test_helper'

class BurialServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @burial_service = burial_services(:one)
  end

  test "should get index" do
    get burial_services_url
    assert_response :success
  end

  test "should get new" do
    get new_burial_service_url
    assert_response :success
  end

  test "should create burial_service" do
    assert_difference('BurialService.count') do
      post burial_services_url, params: { burial_service: { amplificacion: @burial_service.amplificacion, cafeteria: @burial_service.cafeteria, capilla: @burial_service.capilla, coro: @burial_service.coro, diacono: @burial_service.diacono, liturgia-responso: @burial_service.liturgia-responso, sala_de_velatorio: @burial_service.sala_de_velatorio, silla: @burial_service.silla, toldo: @burial_service.toldo } }
    end

    assert_redirected_to burial_service_url(BurialService.last)
  end

  test "should show burial_service" do
    get burial_service_url(@burial_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_burial_service_url(@burial_service)
    assert_response :success
  end

  test "should update burial_service" do
    patch burial_service_url(@burial_service), params: { burial_service: { amplificacion: @burial_service.amplificacion, cafeteria: @burial_service.cafeteria, capilla: @burial_service.capilla, coro: @burial_service.coro, diacono: @burial_service.diacono, liturgia-responso: @burial_service.liturgia-responso, sala_de_velatorio: @burial_service.sala_de_velatorio, silla: @burial_service.silla, toldo: @burial_service.toldo } }
    assert_redirected_to burial_service_url(@burial_service)
  end

  test "should destroy burial_service" do
    assert_difference('BurialService.count', -1) do
      delete burial_service_url(@burial_service)
    end

    assert_redirected_to burial_services_url
  end
end
