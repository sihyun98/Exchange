require 'test_helper'

class CococlubsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cococlubs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cococlubs_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cococlubs_edit_url
    assert_response :success
  end

  test "should get update" do
    get cococlubs_update_url
    assert_response :success
  end

end
