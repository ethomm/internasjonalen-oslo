require 'test_helper'

class ContactpeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contactperson = contactpeople(:eirik)
    @user = users(:eirik)
  end

  test "should get new" do
    login_valid_user
    get new_contactperson_url
    assert_response :success
  end

  test "should create contactperson" do
    login_valid_user
    assert_difference('Contactperson.count') do
      post contactpeople_url, params: { contactperson: { email: @contactperson.email, name: @contactperson.name, stilling: @contactperson.stilling, showtelefon: @contactperson.showtelefon, telefon: @contactperson.telefon } }
    end

    assert_redirected_to administrator_kontaktinfo_path
  end

  test "should get edit" do
    login_valid_user
    get edit_contactperson_url(@contactperson)
    assert_response :success
  end

  test "should update contactperson" do
    login_valid_user
    patch contactperson_url(@contactperson), params: { contactperson: { email: @contactperson.email, name: @contactperson.name, stilling: @contactperson.stilling, showtelefon: @contactperson.showtelefon, telefon: @contactperson.telefon } }
    assert_redirected_to administrator_kontaktinfo_path
  end

  test "should destroy contactperson" do
    login_valid_user
    assert_difference('Contactperson.count', -1) do
      delete contactperson_url(@contactperson)
    end

    assert_redirected_to administrator_kontaktinfo_path
  end
end
