require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home"
  end

  test "should get about" do
    get about_path
    assert_response :success 
    assert_select "title", "About Us"
  end 

  test "should get index" do
    get home_index_url
    assert_response :success
  end

end
