require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get home_info" do
    get info_home_info_url
    assert_response :success
  end

  test "should get new_info" do
    get info_new_info_url
    assert_response :success
  end

  test "should get create_info" do
    get info_create_info_url
    assert_response :success
  end

  test "should get edit_info" do
    get info_edit_info_url
    assert_response :success
  end

  test "should get update_info" do
    get info_update_info_url
    assert_response :success
  end

  test "should get destroy_info" do
    get info_destroy_info_url
    assert_response :success
  end

end
