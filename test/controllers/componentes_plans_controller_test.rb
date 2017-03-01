require 'test_helper'

class ComponentesPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componentes_plan = componentes_plans(:one)
  end

  test "should get index" do
    get componentes_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_componentes_plan_url
    assert_response :success
  end

  test "should create componentes_plan" do
    assert_difference('ComponentesPlan.count') do
      post componentes_plans_url, params: { componentes_plan: { componente_id: @componentes_plan.componente_id, plan_id: @componentes_plan.plan_id } }
    end

    assert_redirected_to componentes_plan_url(ComponentesPlan.last)
  end

  test "should show componentes_plan" do
    get componentes_plan_url(@componentes_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_componentes_plan_url(@componentes_plan)
    assert_response :success
  end

  test "should update componentes_plan" do
    patch componentes_plan_url(@componentes_plan), params: { componentes_plan: { componente_id: @componentes_plan.componente_id, plan_id: @componentes_plan.plan_id } }
    assert_redirected_to componentes_plan_url(@componentes_plan)
  end

  test "should destroy componentes_plan" do
    assert_difference('ComponentesPlan.count', -1) do
      delete componentes_plan_url(@componentes_plan)
    end

    assert_redirected_to componentes_plans_url
  end
end
