class PagesController < ApplicationController
  before_action :set_stuff
  def home
  end

  def about
  	
  end

  def kontakt
  end

  def tekniskespsifikasjoner
    @tekniskcategories = Tekniskcategory.all.eager_load(:tekniskitems)
  end
  
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
      @categories = Category.all
      @bookings = Booking.all
      @about = Omoss.first
      @bars = Bar.all
    end
end
