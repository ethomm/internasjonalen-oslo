require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def setup
  	@globalsettings = globalsettings(:one)
  end
  # Add more helper methods to be used by all tests here...

  def login_valid_user
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: "Password1234" } }
  end
end
