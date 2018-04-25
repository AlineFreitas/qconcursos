require 'test_helper'

class SubjectMattersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subject_matters_index_url
    assert_response :success
  end

  test "should get new" do
    get subject_matters_new_url
    assert_response :success
  end

  test "should get show" do
    get subject_matters_show_url
    assert_response :success
  end

  test "should get edit" do
    get subject_matters_edit_url
    assert_response :success
  end

end
