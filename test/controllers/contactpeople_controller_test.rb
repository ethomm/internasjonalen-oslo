require 'test_helper'

class ContactpeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contactperson = contactpeople(:one)
  end

  test "should get index" do
    get contactpeople_url
    assert_response :success
  end

  test "should get new" do
    get new_contactperson_url
    assert_response :success
  end

  test "should create contactperson" do
    assert_difference('Contactperson.count') do
      post contactpeople_url, params: { contactperson: { email: @contactperson.email, name: @contactperson.name, position: @contactperson.position, showtelefon: @contactperson.showtelefon, telefon: @contactperson.telefon } }
    end

    assert_redirected_to contactperson_url(Contactperson.last)
  end

  test "should show contactperson" do
    get contactperson_url(@contactperson)
    assert_response :success
  end

  test "should get edit" do
    get edit_contactperson_url(@contactperson)
    assert_response :success
  end

  test "should update contactperson" do
    patch contactperson_url(@contactperson), params: { contactperson: { email: @contactperson.email, name: @contactperson.name, position: @contactperson.position, showtelefon: @contactperson.showtelefon, telefon: @contactperson.telefon } }
    assert_redirected_to contactperson_url(@contactperson)
  end

  test "should destroy contactperson" do
    assert_difference('Contactperson.count', -1) do
      delete contactperson_url(@contactperson)
    end

    assert_redirected_to contactpeople_url
  end
end
