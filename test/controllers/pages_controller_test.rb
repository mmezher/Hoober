require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get success" do
    get :success
    assert_response :success
  end

end
