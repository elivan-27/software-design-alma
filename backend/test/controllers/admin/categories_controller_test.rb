require "test_helper"

class Admin::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_categories_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_categories_destroy_url
    assert_response :success
  end
end
