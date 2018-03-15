class AdministratorController < ApplicationController
	before_action :authenticate_user
	layout 'admin'
  	def index
  	end

  	def aldersgrense

  	end

  	def kontaktinfo
      @contactpeople = Contactperson.all
      @contactperson = Contactperson.new
      @role = Role.find(1)
  	end

  	def apningstider
  		
  	end

    def help
      
    end

    def booking
      @bookings = Booking.all
      @contactpeople = Contactperson.all
      @role = Role.find(2)
    end

    def edit_booking
      @booking = Booking.find(params[:id])
      @image = Bookingimage.new
      @images = Bookingimage.where(bookings_id: @booking.id).all
    end

    def meny
      @category = Category.all
    end

    def menykategori
      @drinks = Drink.where(category_id: params[:id] )
    end

  	private	

end
