require 'test_helper'

class SedesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sede = sedes(:one)
  end

  test "should get index" do
    get sedes_url
    assert_response :success
  end

  test "should get new" do
    get new_sede_url
    assert_response :success
  end

  test "should create sede" do
    assert_difference('Sede.count') do
      post sedes_url, params: { sede: { calle: @sede.calle, comuna_id: @sede.comuna_id, empresa_id: @sede.empresa_id, nombre: @sede.nombre, numero: @sede.numero, sector: @sede.sector, ubicacion: @sede.ubicacion } }
    end

    assert_redirected_to sede_url(Sede.last)
  end

  test "should show sede" do
    get sede_url(@sede)
    assert_response :success
  end

  test "should get edit" do
    get edit_sede_url(@sede)
    assert_response :success
  end

  test "should update sede" do
    patch sede_url(@sede), params: { sede: { calle: @sede.calle, comuna_id: @sede.comuna_id, empresa_id: @sede.empresa_id, nombre: @sede.nombre, numero: @sede.numero, sector: @sede.sector, ubicacion: @sede.ubicacion } }
    assert_redirected_to sede_url(@sede)
  end

  test "should destroy sede" do
    assert_difference('Sede.count', -1) do
      delete sede_url(@sede)
    end

    assert_redirected_to sedes_url
  end
end
