require 'test_helper'

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component = components(:one)
  end

  test "should get index" do
    get components_url
    assert_response :success
  end

  test "should get new" do
    get new_component_url
    assert_response :success
  end

  test "should create component" do
    assert_difference('Component.count') do
      post components_url, params: { component: { anfora_id: @component.anfora_id, burial_service_id: @component.burial_service_id, construction_id: @component.construction_id, espacio_id: @component.espacio_id, location_id: @component.location_id, plan_id: @component.plan_id, servicio_de_cinerario_id: @component.servicio_de_cinerario_id, support_id: @component.support_id, traslado_id: @component.traslado_id, urna_id: @component.urna_id, velatorio_id: @component.velatorio_id } }
    end

    assert_redirected_to component_url(Component.last)
  end

  test "should show component" do
    get component_url(@component)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_url(@component)
    assert_response :success
  end

  test "should update component" do
    patch component_url(@component), params: { component: { anfora_id: @component.anfora_id, burial_service_id: @component.burial_service_id, construction_id: @component.construction_id, espacio_id: @component.espacio_id, location_id: @component.location_id, plan_id: @component.plan_id, servicio_de_cinerario_id: @component.servicio_de_cinerario_id, support_id: @component.support_id, traslado_id: @component.traslado_id, urna_id: @component.urna_id, velatorio_id: @component.velatorio_id } }
    assert_redirected_to component_url(@component)
  end

  test "should destroy component" do
    assert_difference('Component.count', -1) do
      delete component_url(@component)
    end

    assert_redirected_to components_url
  end
end
