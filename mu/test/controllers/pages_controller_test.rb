require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get sign_in" do
    get :sign_in
    assert_response :success
  end

  test "should get homepage" do
    get :homepage
    assert_response :success
  end

  test "should get progress_summary" do
    get :progress_summary
    assert_response :success
  end

  test "should get exercise_menu" do
    get :exercise_menu
    assert_response :success
  end

  test "should get exercise" do
    get :exercise
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end
end
