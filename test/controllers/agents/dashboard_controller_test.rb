require 'test_helper'

class Agents::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agents_dashboard_index_url
    assert_response :success
  end

end
