require 'test_helper'

class CocoquestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cocoquestions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cocoquestions_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cocoquestions_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocoquestions_update_url
    assert_response :success
  end

end
