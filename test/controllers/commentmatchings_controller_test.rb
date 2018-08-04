require 'test_helper'

class CommentmatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commentmatchings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get commentmatchings_destroy_url
    assert_response :success
  end

end
