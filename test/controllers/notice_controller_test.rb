require 'test_helper'

class NoticeControllerTest < ActionDispatch::IntegrationTest
  test "should get home_notice" do
    get notice_home_notice_url
    assert_response :success
  end

  test "should get new_notice" do
    get notice_new_notice_url
    assert_response :success
  end

  test "should get create_notice" do
    get notice_create_notice_url
    assert_response :success
  end

  test "should get edit_notice" do
    get notice_edit_notice_url
    assert_response :success
  end

  test "should get update_notice" do
    get notice_update_notice_url
    assert_response :success
  end

  test "should get destroy_notice" do
    get notice_destroy_notice_url
    assert_response :success
  end

end
