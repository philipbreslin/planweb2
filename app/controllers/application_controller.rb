# Reference: http://ruby.railstutorial.org/ruby-on-rails-tutorial-book

class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end



