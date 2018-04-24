require 'test_helper'

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get disciplines_new_url
    assert_response :success
  end

  test "should get show" do
    get disciplines_show_url
    assert_response :success
  end

  test "should get index" do
    get disciplines_index_url
    assert_response :success
  end

  test "should get edit" do
    get disciplines_edit_url
    assert_response :success
  end

  test "should get delete" do
    get disciplines_delete_url
    assert_response :success
  end

  test "should get create" do
    get disciplines_create_url
    assert_response :success
  end

  test "should get update" do
    get disciplines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get disciplines_destroy_url
    assert_response :success
  end

end
