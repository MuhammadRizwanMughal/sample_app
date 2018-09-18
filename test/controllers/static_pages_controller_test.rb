require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get '/'
    assert_response :success
  end

  test "should get home" do
    get '/home'
    assert_response :success
    assert_select "title", "Home | Ruby on rails tatorials"
  end
  test "should get help" do
    get '/help'
    assert_response :success
    assert_select "title", "help | Ruby on rails tatorials"
  end
  test "should get about" do
    get '/about'
    assert_response :success
    assert_select "title", "About | Ruby on rails tatorials"
  end
  test "should get contactus" do
    get '/contactus'
    assert_response :success
    assert_select "title", "Contact us | Ruby on rails tatorials"
  end
end
