require 'test_helper'

class BookingimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookingimage = bookingimages(:one)
    @booking = bookings(:one)
    @user = users(:eirik)
  end

  test "should create bookingimage" do
    login_valid_user
    assert_difference('Bookingimage.count') do
      post bookingimages_url, params: { bookingimage: { booking_id_id: @bookingimage.bookings_id, description: @bookingimage.description, fotograf: @bookingimage.fotograf, image: @bookingimage.image } }
    end

    assert_redirected_to administrator_editbooking_path
  end

  test "should update bookingimage" do
    login_valid_user
    patch bookingimage_url(@bookingimage), params: { bookingimage: { booking_id_id: @bookingimage.bookings_id, description: @bookingimage.description, fotograf: @bookingimage.fotograf, image: @bookingimage.image } }
    assert_redirected_to administrator_editbooking_path(id: @booking.id)
  end

  test "should destroy bookingimage" do
    login_valid_user
    assert_difference('Bookingimage.count', -1) do
      delete bookingimage_url(@bookingimage)
    end

    assert_redirected_to administrator_editbooking_path
  end
end
