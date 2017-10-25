require 'test_helper'

class OmossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @omoss = omosses(:one)
  end

  test "should get index" do
    get omosses_url
    assert_response :success
  end

  test "should get new" do
    get new_omoss_url
    assert_response :success
  end

  test "should create omoss" do
    assert_difference('Omoss.count') do
      post omosses_url, params: { omoss: { body: @omoss.body, ingress: @omoss.ingress, title: @omoss.title } }
    end

    assert_redirected_to omoss_url(Omoss.last)
  end

  test "should show omoss" do
    get omoss_url(@omoss)
    assert_response :success
  end

  test "should get edit" do
    get edit_omoss_url(@omoss)
    assert_response :success
  end

  test "should update omoss" do
    patch omoss_url(@omoss), params: { omoss: { body: @omoss.body, ingress: @omoss.ingress, title: @omoss.title } }
    assert_redirected_to omoss_url(@omoss)
  end

  test "should destroy omoss" do
    assert_difference('Omoss.count', -1) do
      delete omoss_url(@omoss)
    end

    assert_redirected_to omosses_url
  end
end
