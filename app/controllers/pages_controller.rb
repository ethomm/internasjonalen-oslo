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
      @contactperson = Contactperson.find(@setting.contactperson_id)
      @categories = Category.all
      @bookings = Booking.all
      @about = Omoss.first
    end
end
