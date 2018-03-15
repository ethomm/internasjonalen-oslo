class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_stuff
  include SessionsHelper

  private	
  	def set_stuff
  		@setting = Globalsetting.first
      puts "==========================================================}"
      @contact = Contactperson.where.not(stilling: :ingen)
      @bookings = Booking.all
      @about = Omoss.first
      @bars = Bar.all
    end
end
