require 'test_helper'

class Agents::CustomerFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agents_customer_form = agents_customer_forms(:one)
  end

  test "should get index" do
    get agents_customer_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_agents_customer_form_url
    assert_response :success
  end

  test "should create agents_customer_form" do
    assert_difference('Agents::CustomerForm.count') do
      post agents_customer_forms_url, params: { agents_customer_form: {  } }
    end

    assert_redirected_to agents_customer_form_url(Agents::CustomerForm.last)
  end

  test "should show agents_customer_form" do
    get agents_customer_form_url(@agents_customer_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_agents_customer_form_url(@agents_customer_form)
    assert_response :success
  end

  test "should update agents_customer_form" do
    patch agents_customer_form_url(@agents_customer_form), params: { agents_customer_form: {  } }
    assert_redirected_to agents_customer_form_url(@agents_customer_form)
  end

  test "should destroy agents_customer_form" do
    assert_difference('Agents::CustomerForm.count', -1) do
      delete agents_customer_form_url(@agents_customer_form)
    end

    assert_redirected_to agents_customer_forms_url
  end
end
