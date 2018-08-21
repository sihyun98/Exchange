require 'test_helper'

class CoconoticesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get coconotices_create_url
    assert_response :success
  end

  test "should get destroy" do
    get coconotices_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get coconotices_edit_url
    assert_response :success
  end

  test "should get update" do
    get coconotices_update_url
    assert_response :success
  end

end
