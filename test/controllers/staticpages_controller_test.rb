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

  test "should get about " do
    get "/about"
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial"
  end


end
