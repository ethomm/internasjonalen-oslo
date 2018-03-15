require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:eirik)
  end

  test "should get index" do
    login_valid_user
    get users_url
    assert_response :success
  end

  test "should get new" do
    login_valid_user
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    login_valid_user
    assert_difference('User.count') do
      post users_url, params: { user: { admin: false, email: "new@email.com", name: "thomas", password: "Passord1234", password_confirmation: "Passord1234" } }
    end
    assert_redirected_to users_url
  end

  test "should get edit" do
    login_valid_user
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    login_valid_user
    patch user_url(@user), params: { user: { admin: @user.admin, email: @user.email, name: @user.name } }
    assert_redirected_to users_url
  end

  test "should destroy user" do
    login_valid_user
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
