require 'test_helper'

class OmossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @omoss = omosses(:one)
    @user = users(:eirik)
  end


  test "should get edit" do
    login_valid_user
    get edit_omoss_url(@omoss)
    assert_response :success
  end

  test "should update omoss" do
    login_valid_user
    patch omoss_url(@omoss), params: { omoss: { body: @omoss.body, ingress: @omoss.ingress, title: @omoss.title } }
    assert_redirected_to administrator_path
  end
end
