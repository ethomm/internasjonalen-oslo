require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:eirik)
		@stompa = users(:stompa)
	end
  test "should get access to adminpage with valid cerdentials" do
  	login_valid_user
    get administrator_url
    assert_response :success
    assert_template layout: 'layouts/admin'
  end

  test "Should not get access to adminpage" do
		get administrator_url
		assert_response :found
		follow_redirect!
		assert_template "/"
	end

end
