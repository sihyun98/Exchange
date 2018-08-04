require 'test_helper'

class ClubControllerTest < ActionDispatch::IntegrationTest
  test "should get home_club" do
    get club_home_club_url
    assert_response :success
  end

  test "should get create_club" do
    get club_create_club_url
    assert_response :success
  end

  test "should get edit_club" do
    get club_edit_club_url
    assert_response :success
  end

  test "should get update_club" do
    get club_update_club_url
    assert_response :success
  end

  test "should get destroy_club" do
    get club_destroy_club_url
    assert_response :success
  end

end
