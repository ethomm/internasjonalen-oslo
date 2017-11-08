require 'test_helper'

class UtleieitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utleieitem = utleieitems(:one)
  end

  test "should get index" do
    get utleieitems_url
    assert_response :success
  end

  test "should get new" do
    get new_utleieitem_url
    assert_response :success
  end

  test "should create utleieitem" do
    assert_difference('Utleieitem.count') do
      post utleieitems_url, params: { utleieitem: { antall: @utleieitem.antall, brand: @utleieitem.brand, references: @utleieitem.references, title: @utleieitem.title } }
    end

    assert_redirected_to utleieitem_url(Utleieitem.last)
  end

  test "should show utleieitem" do
    get utleieitem_url(@utleieitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_utleieitem_url(@utleieitem)
    assert_response :success
  end

  test "should update utleieitem" do
    patch utleieitem_url(@utleieitem), params: { utleieitem: { antall: @utleieitem.antall, brand: @utleieitem.brand, references: @utleieitem.references, title: @utleieitem.title } }
    assert_redirected_to utleieitem_url(@utleieitem)
  end

  test "should destroy utleieitem" do
    assert_difference('Utleieitem.count', -1) do
      delete utleieitem_url(@utleieitem)
    end

    assert_redirected_to utleieitems_url
  end
end
