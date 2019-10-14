require 'test_helper'

class Admins::AgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_agent = admins_agents(:one)
  end

  test "should get index" do
    get admins_agents_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_agent_url
    assert_response :success
  end

  test "should create admins_agent" do
    assert_difference('Admins::Agent.count') do
      post admins_agents_url, params: { admins_agent: {  } }
    end

    assert_redirected_to admins_agent_url(Admins::Agent.last)
  end

  test "should show admins_agent" do
    get admins_agent_url(@admins_agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_agent_url(@admins_agent)
    assert_response :success
  end

  test "should update admins_agent" do
    patch admins_agent_url(@admins_agent), params: { admins_agent: {  } }
    assert_redirected_to admins_agent_url(@admins_agent)
  end

  test "should destroy admins_agent" do
    assert_difference('Admins::Agent.count', -1) do
      delete admins_agent_url(@admins_agent)
    end

    assert_redirected_to admins_agents_url
  end
end
