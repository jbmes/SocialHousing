require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get find_entrys" do
    get :find_entrys
    assert_response :success
  end

end
