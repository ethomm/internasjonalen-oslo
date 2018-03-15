require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
    @user = users(:eirik)
    @bookingimgae = bookingimages(:one)
  end

  test "should not get index" do
    login_valid_user
    assert_raises(ActionController::RoutingError)  do
      get bookings_url
    end
  end

  test "should get new" do
    login_valid_user
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    login_valid_user
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { title: @booking.title, body: @booking.body, seodescription: @booking.seodescription } }
    end
    assert_redirected_to administrator_booking_url
  end

  test "should show booking" do
    get booking_show_url(@booking.slug)
    assert_response :success
  end

  test "should get edit" do
    login_valid_user
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    login_valid_user
    patch booking_url(@booking), params: { booking: { title: @booking.title, body: @booking.body, seodescription: @booking.seodescription } }
    assert_redirected_to administrator_booking_url
  end

  # test "should destroy booking" do
  #   login_valid_user
  #   assert_difference('Booking.count', -1) do
  #     delete booking_url(@booking.id)
  #   end
  #   assert_redirected_to bookings_url
  # end
end
