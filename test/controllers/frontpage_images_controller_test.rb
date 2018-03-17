require 'test_helper'

class FrontpageImagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @frontpageImage = frontpage_images(:one)
    @user = users(:eirik)
  end

  test 'Get get admin access with valid user' do
    login_valid_user
    get administrator_frontpage_images_url
    assert_response :success
  end

  test 'Get deny admin access with invalid valid user' do
    get administrator_frontpage_images_url
    assert_response :found
  end

  test 'Check for link to frontpageimages on adminpage' do
    login_valid_user
    get administrator_path
    assert_response :success
    assert_select "a[href=?]", administrator_frontpage_images_path
  end

  test 'Check for correct links on frontpage_images page' do
    login_valid_user
    get administrator_frontpage_images_path
    assert_response :success
    assert_select 'a[href=?]', administrator_path
  end

  test 'upload image' do
    login_valid_user
    get administrator_frontpage_images_path
    assert_response :success
    assert_difference('FrontpageImage.count') do
      post frontpage_images_url, params: { frontpage_image: {image_url: "Someurl", fotograf: "Eirik Thommessen"}}
    end
  end

  test "delete photo" do
    login_valid_user
    assert_difference('FrontpageImage.count', -1) do
      delete frontpage_image_url(@frontpageImage)
    end
    #assert_redirected_to administrator_frontpage_images_path

  end
end
