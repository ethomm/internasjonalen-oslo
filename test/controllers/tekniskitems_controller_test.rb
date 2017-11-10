require 'test_helper'

class TekniskitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tekniskitem = tekniskitems(:one)
  end

  test "should get index" do
    get tekniskitems_url
    assert_response :success
  end

  test "should get new" do
    get new_tekniskitem_url
    assert_response :success
  end

  test "should create tekniskitem" do
    assert_difference('Tekniskitem.count') do
      post tekniskitems_url, params: { tekniskitem: { antall: @tekniskitem.antall, status: @tekniskitem.status, tekniskcategory_id: @tekniskitem.tekniskcategory_id, title: @tekniskitem.title } }
    end

    assert_redirected_to tekniskitem_url(Tekniskitem.last)
  end

  test "should show tekniskitem" do
    get tekniskitem_url(@tekniskitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_tekniskitem_url(@tekniskitem)
    assert_response :success
  end

  test "should update tekniskitem" do
    patch tekniskitem_url(@tekniskitem), params: { tekniskitem: { antall: @tekniskitem.antall, status: @tekniskitem.status, tekniskcategory_id: @tekniskitem.tekniskcategory_id, title: @tekniskitem.title } }
    assert_redirected_to tekniskitem_url(@tekniskitem)
  end

  test "should destroy tekniskitem" do
    assert_difference('Tekniskitem.count', -1) do
      delete tekniskitem_url(@tekniskitem)
    end

    assert_redirected_to tekniskitems_url
  end
end
