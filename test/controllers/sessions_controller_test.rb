require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_new_url
    assert_response :success
  end
  
  test "should redirect edit when not logged in" do
    get edit_user_path
  end

end
