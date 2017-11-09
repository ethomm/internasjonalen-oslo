class PagesController < ApplicationController
  before_action :set_stuff
  def home
  end

  def about
  	
  end

  def kontakt
  end
  
  private	
  	def set_stuff
  		@setting = Globalsetting.first
      @categories = Category.all
      @bookings = Booking.all
      @about = Omoss.first
    end
end
