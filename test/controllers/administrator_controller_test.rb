require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:eirik)
		@stompa = users(:stompa)
	end
  test "should get access to adminpage with valid cerdentials" do
  	get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: @user.email, password: "Password1234" } }
  	get login_path
    get administrator_url
    assert_response :success
  end

  test "Should not get access to adminpage" do
		get administrator_url
		assert_response :found
		follow_redirect!
		assert_template "/"
	end

end
