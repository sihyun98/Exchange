require 'test_helper'

class CocomentclubsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cocomentclubs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cocomentclubs_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cocomentclubs_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocomentclubs_update_url
    assert_response :success
  end

end
