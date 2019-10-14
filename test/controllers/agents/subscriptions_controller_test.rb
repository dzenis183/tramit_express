require 'test_helper'

class Agents::SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agents_subscription = agents_subscriptions(:one)
  end

  test "should get index" do
    get agents_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_agents_subscription_url
    assert_response :success
  end

  test "should create agents_subscription" do
    assert_difference('Agents::Subscription.count') do
      post agents_subscriptions_url, params: { agents_subscription: {  } }
    end

    assert_redirected_to agents_subscription_url(Agents::Subscription.last)
  end

  test "should show agents_subscription" do
    get agents_subscription_url(@agents_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_agents_subscription_url(@agents_subscription)
    assert_response :success
  end

  test "should update agents_subscription" do
    patch agents_subscription_url(@agents_subscription), params: { agents_subscription: {  } }
    assert_redirected_to agents_subscription_url(@agents_subscription)
  end

  test "should destroy agents_subscription" do
    assert_difference('Agents::Subscription.count', -1) do
      delete agents_subscription_url(@agents_subscription)
    end

    assert_redirected_to agents_subscriptions_url
  end
end
