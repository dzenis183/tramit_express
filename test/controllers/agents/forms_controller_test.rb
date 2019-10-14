require 'test_helper'

class Agents::FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agents_form = agents_forms(:one)
  end

  test "should get index" do
    get agents_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_agents_form_url
    assert_response :success
  end

  test "should create agents_form" do
    assert_difference('Agents::Form.count') do
      post agents_forms_url, params: { agents_form: {  } }
    end

    assert_redirected_to agents_form_url(Agents::Form.last)
  end

  test "should show agents_form" do
    get agents_form_url(@agents_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_agents_form_url(@agents_form)
    assert_response :success
  end

  test "should update agents_form" do
    patch agents_form_url(@agents_form), params: { agents_form: {  } }
    assert_redirected_to agents_form_url(@agents_form)
  end

  test "should destroy agents_form" do
    assert_difference('Agents::Form.count', -1) do
      delete agents_form_url(@agents_form)
    end

    assert_redirected_to agents_forms_url
  end
end
