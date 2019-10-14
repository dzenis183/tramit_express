require 'test_helper'

class Admins::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_category = admins_categories(:one)
  end

  test "should get index" do
    get admins_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_category_url
    assert_response :success
  end

  test "should create admins_category" do
    assert_difference('Admins::Category.count') do
      post admins_categories_url, params: { admins_category: {  } }
    end

    assert_redirected_to admins_category_url(Admins::Category.last)
  end

  test "should show admins_category" do
    get admins_category_url(@admins_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_category_url(@admins_category)
    assert_response :success
  end

  test "should update admins_category" do
    patch admins_category_url(@admins_category), params: { admins_category: {  } }
    assert_redirected_to admins_category_url(@admins_category)
  end

  test "should destroy admins_category" do
    assert_difference('Admins::Category.count', -1) do
      delete admins_category_url(@admins_category)
    end

    assert_redirected_to admins_categories_url
  end
end
