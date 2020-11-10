require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get items" do
    get user_items_url
    assert_response :success
  end

end
