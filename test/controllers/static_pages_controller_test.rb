require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title","Home"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title","help"
  end
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title","about"
  end
  test "should get contactus" do
    get static_pages_contactus_url
    assert_response :success
    assert_select "title","contactus"
  end
end
