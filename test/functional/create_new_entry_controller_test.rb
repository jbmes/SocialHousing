require 'test_helper'

class CreateNewEntryControllerTest < ActionController::TestCase
  test "should get new_entry" do
    get :new_entry
    assert_response :success
  end

end
