require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get inde" do
    get :inde
    assert_response :success
  end

end
