# Reference: http://ruby.railstutorial.org/ruby-on-rails-tutorial-book

require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
