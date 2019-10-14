require 'test_helper'

class Admins::PaypalSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_paypal_subscription = admins_paypal_subscriptions(:one)
  end

  test "should get index" do
    get admins_paypal_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_paypal_subscription_url
    assert_response :success
  end

  test "should create admins_paypal_subscription" do
    assert_difference('Admins::PaypalSubscription.count') do
      post admins_paypal_subscriptions_url, params: { admins_paypal_subscription: {  } }
    end

    assert_redirected_to admins_paypal_subscription_url(Admins::PaypalSubscription.last)
  end

  test "should show admins_paypal_subscription" do
    get admins_paypal_subscription_url(@admins_paypal_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_paypal_subscription_url(@admins_paypal_subscription)
    assert_response :success
  end

  test "should update admins_paypal_subscription" do
    patch admins_paypal_subscription_url(@admins_paypal_subscription), params: { admins_paypal_subscription: {  } }
    assert_redirected_to admins_paypal_subscription_url(@admins_paypal_subscription)
  end

  test "should destroy admins_paypal_subscription" do
    assert_difference('Admins::PaypalSubscription.count', -1) do
      delete admins_paypal_subscription_url(@admins_paypal_subscription)
    end

    assert_redirected_to admins_paypal_subscriptions_url
  end
end
