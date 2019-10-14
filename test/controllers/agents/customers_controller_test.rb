require 'test_helper'

class Agents::CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agents_customer = agents_customers(:one)
  end

  test "should get index" do
    get agents_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_agents_customer_url
    assert_response :success
  end

  test "should create agents_customer" do
    assert_difference('Agents::Customer.count') do
      post agents_customers_url, params: { agents_customer: {  } }
    end

    assert_redirected_to agents_customer_url(Agents::Customer.last)
  end

  test "should show agents_customer" do
    get agents_customer_url(@agents_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_agents_customer_url(@agents_customer)
    assert_response :success
  end

  test "should update agents_customer" do
    patch agents_customer_url(@agents_customer), params: { agents_customer: {  } }
    assert_redirected_to agents_customer_url(@agents_customer)
  end

  test "should destroy agents_customer" do
    assert_difference('Agents::Customer.count', -1) do
      delete agents_customer_url(@agents_customer)
    end

    assert_redirected_to agents_customers_url
  end
end
