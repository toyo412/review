require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user= User.new(email: "user@example.com")
  end

  test "a" do
    @user.email = ""
    assert !@user.valid?
  end

end
