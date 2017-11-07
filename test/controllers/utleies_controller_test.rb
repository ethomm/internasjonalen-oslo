require 'test_helper'

class UtleiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utleie = utleies(:one)
  end

  test "should get index" do
    get utleies_url
    assert_response :success
  end

  test "should get new" do
    get new_utleie_url
    assert_response :success
  end

  test "should create utleie" do
    assert_difference('Utleie.count') do
      post utleies_url, params: { utleie: { booking_email: @utleie.booking_email, contact_email: @utleie.contact_email, contact_number: @utleie.contact_number, contact_position: @utleie.contact_position, contactperson: @utleie.contactperson, ingress: @utleie.ingress, show_contact_number: @utleie.show_contact_number } }
    end

    assert_redirected_to utleie_url(Utleie.last)
  end

  test "should show utleie" do
    get utleie_url(@utleie)
    assert_response :success
  end

  test "should get edit" do
    get edit_utleie_url(@utleie)
    assert_response :success
  end

  test "should update utleie" do
    patch utleie_url(@utleie), params: { utleie: { booking_email: @utleie.booking_email, contact_email: @utleie.contact_email, contact_number: @utleie.contact_number, contact_position: @utleie.contact_position, contactperson: @utleie.contactperson, ingress: @utleie.ingress, show_contact_number: @utleie.show_contact_number } }
    assert_redirected_to utleie_url(@utleie)
  end

  test "should destroy utleie" do
    assert_difference('Utleie.count', -1) do
      delete utleie_url(@utleie)
    end

    assert_redirected_to utleies_url
  end
end
