require 'test_helper'

class MatchingControllerTest < ActionDispatch::IntegrationTest
  test "should get home_matching" do
    get matching_home_matching_url
    assert_response :success
  end

  test "should get new_matching" do
    get matching_new_matching_url
    assert_response :success
  end

  test "should get create_matching" do
    get matching_create_matching_url
    assert_response :success
  end

  test "should get edit_matching" do
    get matching_edit_matching_url
    assert_response :success
  end

  test "should get update_matching" do
    get matching_update_matching_url
    assert_response :success
  end

  test "should get destroy_matching" do
    get matching_destroy_matching_url
    assert_response :success
  end

end
