require 'test_helper'

class Agents::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agents_category = agents_categories(:one)
  end

  test "should get index" do
    get agents_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_agents_category_url
    assert_response :success
  end

  test "should create agents_category" do
    assert_difference('Agents::Category.count') do
      post agents_categories_url, params: { agents_category: {  } }
    end

    assert_redirected_to agents_category_url(Agents::Category.last)
  end

  test "should show agents_category" do
    get agents_category_url(@agents_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_agents_category_url(@agents_category)
    assert_response :success
  end

  test "should update agents_category" do
    patch agents_category_url(@agents_category), params: { agents_category: {  } }
    assert_redirected_to agents_category_url(@agents_category)
  end

  test "should destroy agents_category" do
    assert_difference('Agents::Category.count', -1) do
      delete agents_category_url(@agents_category)
    end

    assert_redirected_to agents_categories_url
  end
end
