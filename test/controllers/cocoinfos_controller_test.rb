require 'test_helper'

class CocoinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cocoinfos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cocoinfos_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cocoinfos_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocoinfos_update_url
    assert_response :success
  end

end
