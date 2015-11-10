require 'test_helper'

class GithubControllerTest < ActionController::TestCase
  test "should get push" do
    get :push
    assert_response :success
  end

end
