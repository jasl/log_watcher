require 'test_helper'

module LogWatcher
  class LogsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
