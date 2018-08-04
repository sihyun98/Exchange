require 'test_helper'

class CommentinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commentinfos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get commentinfos_destroy_url
    assert_response :success
  end

end
