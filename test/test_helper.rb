require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new


class ActiveSupport::TestCase
  include ActionDispatch::TestProcess
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def setup
  	@globalsettings = globalsettings(:one)
  end
  # Add more helper methods to be used by all tests here...
  def after_teardown
    super
    CarrierWave.clean_cached_files!(0)
  end

  def create_photo image
    photo = fixture_file_upload(image, 'image/jpg')
  end

  def login_valid_user
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: "Password1234" } }
  end
end

