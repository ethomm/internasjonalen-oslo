require 'test_helper'

class TekniskcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tekniskcategory = tekniskcategories(:one)
    @user = users(:eirik)
  end

  test "should get index" do
    get tekniskcategories_url
    assert_response :found
    assert_redirected_to root_path
  end


  test "should create tekniskcategory" do
    login_valid_user
    assert_difference('Tekniskcategory.count') do
      post tekniskcategories_url, params: { tekniskcategory: { title: @tekniskcategory.title } }
    end

    assert_redirected_to tekniskcategories_url
  end

  test "should show tekniskcategory" do
    get tekniskcategory_url(@tekniskcategory)
    assert_response :found
    assert_redirected_to root_path
  end

  test "should show tekniskcategory if valid user" do
    login_valid_user
    get tekniskcategory_url(@tekniskcategory)
    assert_response :success
  end

  test "should get edit" do
    login_valid_user
    get edit_tekniskcategory_url(@tekniskcategory)
    assert_response :success
  end

  test "should update tekniskcategory" do
    login_valid_user
    patch tekniskcategory_url(@tekniskcategory), params: { tekniskcategory: { title: @tekniskcategory.title } }
    assert_redirected_to tekniskcategories_url
  end

  test "should destroy tekniskcategory" do
    login_valid_user
    assert_difference('Tekniskcategory.count', -1) do
      delete tekniskcategory_url(@tekniskcategory)
    end

    assert_redirected_to tekniskcategories_url
  end
end
