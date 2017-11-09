class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :get_stuff, only: [:show]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @images = Bookingimage.where(bookings_id: @booking.id).all
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    render layout: 'admin'
  end

  # GET /bookings/1/edit
  def edit
    render layout: 'admin'
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to administrator_booking_path, notice: 'Booking was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
      if @booking.update(booking_params)
        redirect_to administrator_booking_path, notice: 'Booking was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    redirect_to administrator_booking_path, notice: 'Booking was successfully destroyed.'
  end

  private
    def get_stuff
      @booking = Booking.find_by_slug(params[:id])
      @categories = Category.all
      @setting = Globalsetting.first
      @bookings = Booking.all 
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:title, :body, :slug, :seodescription)
    end
end
