require 'test_helper'

class CocomatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cocomatchings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cocomatchings_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cocomatchings_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocomatchings_update_url
    assert_response :success
  end

end
