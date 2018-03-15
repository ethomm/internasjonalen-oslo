require 'test_helper'

class TekniskitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tekniskitem = tekniskitems(:one)
    @user = users(:eirik)
  end

  test "should create tekniskitem" do
    login_valid_user
    assert_difference('Tekniskitem.count') do
      post tekniskitems_url, params: { tekniskitem: { antall: @tekniskitem.antall, status: @tekniskitem.status, tekniskcategory_id: @tekniskitem.tekniskcategory_id, title: @tekniskitem.title } }
    end

    assert_redirected_to tekniskcategories_path
  end

  test "should get edit" do
    login_valid_user
    get edit_tekniskitem_url(@tekniskitem)
    assert_response :success
  end

  test "should update tekniskitem" do
    login_valid_user
    patch tekniskitem_url(@tekniskitem), params: { tekniskitem: { antall: @tekniskitem.antall, status: @tekniskitem.status, tekniskcategory_id: @tekniskitem.tekniskcategory_id, title: @tekniskitem.title } }
    assert_redirected_to tekniskcategories_path
  end

  test "should destroy tekniskitem" do
    login_valid_user
    assert_difference('Tekniskitem.count', -1) do
      delete tekniskitem_url(@tekniskitem)
    end

    assert_redirected_to tekniskcategories_path
  end
end
