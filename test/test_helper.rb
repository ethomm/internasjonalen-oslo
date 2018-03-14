require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def setup
    @bookings = bookings(:one)
    @about = omosses(:one)
    @bars = bars(:one)
  end
  # Add more helper methods to be used by all tests here...
end
