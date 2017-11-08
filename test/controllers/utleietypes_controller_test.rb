require 'test_helper'

class UtleietypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utleietype = utleietypes(:one)
  end

  test "should get index" do
    get utleietypes_url
    assert_response :success
  end

  test "should get new" do
    get new_utleietype_url
    assert_response :success
  end

  test "should create utleietype" do
    assert_difference('Utleietype.count') do
      post utleietypes_url, params: { utleietype: { title: @utleietype.title } }
    end

    assert_redirected_to utleietype_url(Utleietype.last)
  end

  test "should show utleietype" do
    get utleietype_url(@utleietype)
    assert_response :success
  end

  test "should get edit" do
    get edit_utleietype_url(@utleietype)
    assert_response :success
  end

  test "should update utleietype" do
    patch utleietype_url(@utleietype), params: { utleietype: { title: @utleietype.title } }
    assert_redirected_to utleietype_url(@utleietype)
  end

  test "should destroy utleietype" do
    assert_difference('Utleietype.count', -1) do
      delete utleietype_url(@utleietype)
    end

    assert_redirected_to utleietypes_url
  end
end
