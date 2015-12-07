require 'test_helper'

class PagesControllerTest < ActionController::TestCase

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

  test "should get termsandconditions" do
    get :termsandconditions
    assert_response :success
  end

  test "should get dyspraxiainfo" do
    get :dyspraxiainfo
     assert_response :success
  end


  test "should get aboutus" do
  get :aboutus
  assert_response :success
end

  test "should get faq" do
  get :faq
  assert_response :success
end

end
