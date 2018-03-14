class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_stuff
  include SessionsHelper

  private	
  	def set_stuff
  		@setting = Globalsetting.first
      if @setting.contact_id != 0;
        @contactperson = Contactperson.find(@setting.contact_id)
      end
      if @setting.booking_id != 0;
        @bookingperson = Contactperson.find(@setting.booking_id)
      end
      if @setting.teknisk_id != 0;
        @tekniskperson = Contactperson.find(@setting.teknisk_id)
      end
      @bookings = Booking.all
      @about = Omoss.first
      @bars = Bar.all
    end
end
