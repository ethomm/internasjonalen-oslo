require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:eirik)
  end

  test "User valid" do
    user = User.new(name: @user.name, email: "eksempelt@eksempel.no", password: "Passord1234", password_confirmation: "Passord1234")
    assert user.valid?, "#{user.errors.full_messages} ============== "
  end

  test "User must have name" do
    user = User.new(name: "", email: "eksempelt@eksempel.no", password: "Passord1234", password_confirmation: "Passord1234")
    assert_not user.valid?, "#{user.errors.full_messages} ============== "
  end

  test "User must have email" do
    user = User.new(name: @user.name, email: "", password: "Passord1234", password_confirmation: "Passord1234")
    assert_not user.valid?, "#{user.errors.full_messages} ============== "
  end

  test "User must have valid email" do
    user = User.new(name: @user.name, email: "eksemeplAT.com", password: "Passord1234", password_confirmation: "Passord1234")
    assert_not user.valid?, "#{user.errors.full_messages} ============== "
  end

  test "User must have valid unique email" do
    user = User.create(name: @user.name, email: "eksempel@eksempel.com", password: "Passord1234", password_confirmation: "Passord1234")
    assert user.valid?, "#{user.errors.full_messages} ============== "
    user2 = User.create(name: @user.name, email: "eksempel@eksempel.com", password: "Passord1234", password_confirmation: "Passord1234")
    assert_not user2.valid?
  end

  test "User must have password" do
    user = User.new(name: @user.name, email: "eksempelt@eksempel.no")
    assert_not user.valid?, "#{user.errors.full_messages} ============== "
  end

  test "User must have matching password" do
    user = User.new(name: @user.name, email: "eksempelt@eksempel.no", password: "Passsord1234", password_confirmation: "Passord1234")
    assert_not user.valid?, "#{user.errors.full_messages} ============== "
  end
end
