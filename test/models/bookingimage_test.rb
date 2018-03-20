require 'test_helper'

class BookingimageTest < ActiveSupport::TestCase
  def setup
    @booking = bookings(:one)
  end

  test "Booking image is valid" do
    image = create_photo('files/test.png')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert bookingimage.valid?
  end 

  test "Booking image should have image" do
    bookingimage = Bookingimage.new(image: "", bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert_not bookingimage.valid?
  end

  test "Booking image should allow PNG image" do
    image = create_photo('files/test.png')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert bookingimage.valid?
  end 

  test "Booking image should allow GIF image" do
    image = create_photo('files/test.gif')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert bookingimage.valid?
  end 

  test "Booking image should allow JPG image" do
    image = create_photo('files/test.jpg')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert bookingimage.valid?
  end

  test "Booking image should not allow PDF image" do
    image = create_photo('files/test.pdf')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "En beskrivelse" )
    assert_not bookingimage.valid?
  end

  test "Booking image description has to be presence" do
    image = create_photo('files/test.png')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "" )
    assert_not bookingimage.valid?
  end

  test "Booking image description has to be longer than 4 characters" do
    image = create_photo('files/test.png')
    bookingimage = Bookingimage.new(image: image, bookings_id: @booking.id, fotograf: "En fotograf", description: "1234" )
    assert_not bookingimage.valid?
  end


end
