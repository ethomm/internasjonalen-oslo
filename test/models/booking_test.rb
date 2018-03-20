require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @user = users(:eirik)
    @booking = bookings(:one)
  end

  test "Booking is valid" do
    booking = Booking.new(title: @booking.title, body: @booking.body, seodescription: @booking.seodescription)
    assert booking.valid?
  end

  test "Booking should have a title" do
    booking = Booking.new(title: "", body: @booking.body, seodescription: @booking.seodescription)
    assert_not booking.valid?
  end

  test "Booking should have a title longer than 3 characters" do
    booking = Booking.new(title: "123", body: @booking.body, seodescription: @booking.seodescription)
    assert_not booking.valid?
  end

  test "Booking should have a body" do
    booking = Booking.new(title: @booking.title, body: "", seodescription: @booking.seodescription)
    assert_not booking.valid?
  end

  test "Booking should have a body longer than 10 Characters" do
    booking = Booking.new(title: @booking.title, body: "123456789", seodescription: @booking.seodescription)
    assert_not booking.valid?
  end

  test "Booking should have a seodescription" do
    booking = Booking.new(title: @booking.title, body: @booking.body, seodescription: "")
    assert_not booking.valid?
  end

  test "Booking should have a seodescription longer than 4 Characters" do
    booking = Booking.new(title: @booking.title, body: @booking.body, seodescription: "1234")
    assert_not booking.valid?
  end
end
