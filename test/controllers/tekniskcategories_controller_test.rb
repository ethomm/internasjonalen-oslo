require 'test_helper'

class TekniskcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tekniskcategory = tekniskcategories(:one)
  end

  test "should get index" do
    get tekniskcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_tekniskcategory_url
    assert_response :success
  end

  test "should create tekniskcategory" do
    assert_difference('Tekniskcategory.count') do
      post tekniskcategories_url, params: { tekniskcategory: { title: @tekniskcategory.title } }
    end

    assert_redirected_to tekniskcategory_url(Tekniskcategory.last)
  end

  test "should show tekniskcategory" do
    get tekniskcategory_url(@tekniskcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_tekniskcategory_url(@tekniskcategory)
    assert_response :success
  end

  test "should update tekniskcategory" do
    patch tekniskcategory_url(@tekniskcategory), params: { tekniskcategory: { title: @tekniskcategory.title } }
    assert_redirected_to tekniskcategory_url(@tekniskcategory)
  end

  test "should destroy tekniskcategory" do
    assert_difference('Tekniskcategory.count', -1) do
      delete tekniskcategory_url(@tekniskcategory)
    end

    assert_redirected_to tekniskcategories_url
  end
end
