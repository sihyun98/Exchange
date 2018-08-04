require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index_main" do
    get main_index_main_url
    assert_response :success
  end

end
