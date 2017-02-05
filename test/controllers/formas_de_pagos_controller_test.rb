require 'test_helper'

class FormasDePagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formas_de_pago = formas_de_pagos(:one)
  end

  test "should get index" do
    get formas_de_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_formas_de_pago_url
    assert_response :success
  end

  test "should create formas_de_pago" do
    assert_difference('FormasDePago.count') do
      post formas_de_pagos_url, params: { formas_de_pago: { nombre: @formas_de_pago.nombre } }
    end

    assert_redirected_to formas_de_pago_url(FormasDePago.last)
  end

  test "should show formas_de_pago" do
    get formas_de_pago_url(@formas_de_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_formas_de_pago_url(@formas_de_pago)
    assert_response :success
  end

  test "should update formas_de_pago" do
    patch formas_de_pago_url(@formas_de_pago), params: { formas_de_pago: { nombre: @formas_de_pago.nombre } }
    assert_redirected_to formas_de_pago_url(@formas_de_pago)
  end

  test "should destroy formas_de_pago" do
    assert_difference('FormasDePago.count', -1) do
      delete formas_de_pago_url(@formas_de_pago)
    end

    assert_redirected_to formas_de_pagos_url
  end
end
