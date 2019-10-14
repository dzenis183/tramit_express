require 'test_helper'

class Admins::FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_form = admins_forms(:one)
  end

  test "should get index" do
    get admins_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_form_url
    assert_response :success
  end

  test "should create admins_form" do
    assert_difference('Admins::Form.count') do
      post admins_forms_url, params: { admins_form: {  } }
    end

    assert_redirected_to admins_form_url(Admins::Form.last)
  end

  test "should show admins_form" do
    get admins_form_url(@admins_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_form_url(@admins_form)
    assert_response :success
  end

  test "should update admins_form" do
    patch admins_form_url(@admins_form), params: { admins_form: {  } }
    assert_redirected_to admins_form_url(@admins_form)
  end

  test "should destroy admins_form" do
    assert_difference('Admins::Form.count', -1) do
      delete admins_form_url(@admins_form)
    end

    assert_redirected_to admins_forms_url
  end
end
