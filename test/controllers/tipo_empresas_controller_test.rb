require 'test_helper'

class TipoEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_empresa = tipo_empresas(:one)
  end

  test "should get index" do
    get tipo_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_empresa_url
    assert_response :success
  end

  test "should create tipo_empresa" do
    assert_difference('TipoEmpresa.count') do
      post tipo_empresas_url, params: { tipo_empresa: { nombre: @tipo_empresa.nombre } }
    end

    assert_redirected_to tipo_empresa_url(TipoEmpresa.last)
  end

  test "should show tipo_empresa" do
    get tipo_empresa_url(@tipo_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_empresa_url(@tipo_empresa)
    assert_response :success
  end

  test "should update tipo_empresa" do
    patch tipo_empresa_url(@tipo_empresa), params: { tipo_empresa: { nombre: @tipo_empresa.nombre } }
    assert_redirected_to tipo_empresa_url(@tipo_empresa)
  end

  test "should destroy tipo_empresa" do
    assert_difference('TipoEmpresa.count', -1) do
      delete tipo_empresa_url(@tipo_empresa)
    end

    assert_redirected_to tipo_empresas_url
  end
end
