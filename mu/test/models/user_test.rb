require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(first_name: "Anima", second_name: "Seteine", user_name: "LightOfAnima", password_hash: "asdfgh",
                     age: "4 May 1995", email: "lightofanima@gmail.com");
  end

  test "should be valid" do
    assert @user.valid?
  end
 

end
