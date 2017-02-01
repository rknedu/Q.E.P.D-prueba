require 'test_helper'

class TypePlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_plan = type_plans(:one)
  end

  test "should get index" do
    get type_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_type_plan_url
    assert_response :success
  end

  test "should create type_plan" do
    assert_difference('TypePlan.count') do
      post type_plans_url, params: { type_plan: { nombre: @type_plan.nombre } }
    end

    assert_redirected_to type_plan_url(TypePlan.last)
  end

  test "should show type_plan" do
    get type_plan_url(@type_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_plan_url(@type_plan)
    assert_response :success
  end

  test "should update type_plan" do
    patch type_plan_url(@type_plan), params: { type_plan: { nombre: @type_plan.nombre } }
    assert_redirected_to type_plan_url(@type_plan)
  end

  test "should destroy type_plan" do
    assert_difference('TypePlan.count', -1) do
      delete type_plan_url(@type_plan)
    end

    assert_redirected_to type_plans_url
  end
end
