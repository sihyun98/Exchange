require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get edit_page" do
    get page_edit_page_url
    assert_response :success
  end

  test "should get create_page" do
    get page_create_page_url
    assert_response :success
  end

  test "should get home_page" do
    get page_home_page_url
    assert_response :success
  end

  test "should get save_page" do
    get page_save_page_url
    assert_response :success
  end

end
