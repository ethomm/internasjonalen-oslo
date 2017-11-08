require 'test_helper'

class BookingimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookingimage = bookingimages(:one)
  end

  test "should get index" do
    get bookingimages_url
    assert_response :success
  end

  test "should get new" do
    get new_bookingimage_url
    assert_response :success
  end

  test "should create bookingimage" do
    assert_difference('Bookingimage.count') do
      post bookingimages_url, params: { bookingimage: { booking_id_id: @bookingimage.booking_id_id, description: @bookingimage.description, fotograf: @bookingimage.fotograf, image: @bookingimage.image } }
    end

    assert_redirected_to bookingimage_url(Bookingimage.last)
  end

  test "should show bookingimage" do
    get bookingimage_url(@bookingimage)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookingimage_url(@bookingimage)
    assert_response :success
  end

  test "should update bookingimage" do
    patch bookingimage_url(@bookingimage), params: { bookingimage: { booking_id_id: @bookingimage.booking_id_id, description: @bookingimage.description, fotograf: @bookingimage.fotograf, image: @bookingimage.image } }
    assert_redirected_to bookingimage_url(@bookingimage)
  end

  test "should destroy bookingimage" do
    assert_difference('Bookingimage.count', -1) do
      delete bookingimage_url(@bookingimage)
    end

    assert_redirected_to bookingimages_url
  end
end
