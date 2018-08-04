require 'test_helper'

class QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get home_question" do
    get question_home_question_url
    assert_response :success
  end

  test "should get new_question" do
    get question_new_question_url
    assert_response :success
  end

  test "should get create_question" do
    get question_create_question_url
    assert_response :success
  end

  test "should get edit_question" do
    get question_edit_question_url
    assert_response :success
  end

  test "should get update_question" do
    get question_update_question_url
    assert_response :success
  end

  test "should get destroy_question" do
    get question_destroy_question_url
    assert_response :success
  end

end
