require 'test_helper'

class GlobalsettingTest < ActiveSupport::TestCase
  test "globalsetting must have slogan" do
    @globalsetting = globalsettings(:one)
    @globalsetting.slogan = ""
    assert_not @globalsetting.valid?
  end

end
