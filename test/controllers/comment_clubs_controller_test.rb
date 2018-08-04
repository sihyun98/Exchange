require 'test_helper'

class CommentClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment_clubs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comment_clubs_destroy_url
    assert_response :success
  end

end
