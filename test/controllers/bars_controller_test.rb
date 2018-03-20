require 'test_helper'

class BarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bar = bars(:one)
    @user = users(:eirik)
  end

  test "should get index" do
    login_valid_user
    get bars_url
    assert_response :success
  end

  test "should get new" do
    login_valid_user
    get new_bar_url
    assert_response :success
  end

  test "should create bar" do
    login_valid_user
    assert_difference('Bar.count') do
      post bars_url, params: { bar: { body: @bar.body, title: @bar.title, seo_description: @bar.seo_description } }
    end
    assert_redirected_to bars_url
  end

  test "should show bar" do
    get bar_show_url(@bar.slug)
    assert_response :success
  end

  test "should get edit" do
    login_valid_user
    get edit_bar_url(@bar)
    assert_response :success
  end

  test "should update bar" do
    login_valid_user
    patch bar_url(@bar), params: { bar: { body: @bar.body, title: @bar.title, seo_description: @bar.seo_description  } }
    assert_redirected_to bars_url
  end

  test "should destroy bar" do
    login_valid_user
    assert_difference('Bar.count', -1) do
      delete bar_url(@bar)
    end

    assert_redirected_to bars_url
  end
end
