require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get home_review" do
    get review_home_review_url
    assert_response :success
  end

  test "should get new_review" do
    get review_new_review_url
    assert_response :success
  end

  test "should get create_review" do
    get review_create_review_url
    assert_response :success
  end

  test "should get edit_review" do
    get review_edit_review_url
    assert_response :success
  end

  test "should get update_review" do
    get review_update_review_url
    assert_response :success
  end

  test "should get destroy_review" do
    get review_destroy_review_url
    assert_response :success
  end

end
