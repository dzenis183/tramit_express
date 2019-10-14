require 'test_helper'

class Admins::PaypalPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_paypal_plan = admins_paypal_plans(:one)
  end

  test "should get index" do
    get admins_paypal_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_paypal_plan_url
    assert_response :success
  end

  test "should create admins_paypal_plan" do
    assert_difference('Admins::PaypalPlan.count') do
      post admins_paypal_plans_url, params: { admins_paypal_plan: {  } }
    end

    assert_redirected_to admins_paypal_plan_url(Admins::PaypalPlan.last)
  end

  test "should show admins_paypal_plan" do
    get admins_paypal_plan_url(@admins_paypal_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_paypal_plan_url(@admins_paypal_plan)
    assert_response :success
  end

  test "should update admins_paypal_plan" do
    patch admins_paypal_plan_url(@admins_paypal_plan), params: { admins_paypal_plan: {  } }
    assert_redirected_to admins_paypal_plan_url(@admins_paypal_plan)
  end

  test "should destroy admins_paypal_plan" do
    assert_difference('Admins::PaypalPlan.count', -1) do
      delete admins_paypal_plan_url(@admins_paypal_plan)
    end

    assert_redirected_to admins_paypal_plans_url
  end
end
