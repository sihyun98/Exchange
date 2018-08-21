require 'test_helper'

class CocoreviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cocoreviews_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cocoreviews_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cocoreviews_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocoreviews_update_url
    assert_response :success
  end

end
