require "test_helper"

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get "/"
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_response :success
  end

  test "should about contact" do
    get about_path
    assert_response :success
  end
end
