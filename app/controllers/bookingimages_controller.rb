class BookingimagesController < ApplicationController
  before_action :authenticate_user
  before_action :set_bookingimage, only: [ :update, :destroy]


  # POST /bookingimages
  # POST /bookingimages.json
  def create
    @bookingimage = Bookingimage.new(bookingimage_params)
      if @bookingimage.save
        redirect_to administrator_editbooking_path(:id => @bookingimage.bookings_id), notice: 'Et bildet er blitt lastet opp og lagt til siden'
      else
        redirect_to administrator_editbooking_path(:id => bookingimage_params[:bookings_id]), notice: 'Bilde ble ikke opprettet. Et bilde må ha en fil i tilleg til en beskrivelse av bildet. Fotograf er valgfritt'
      end
  end

  # PATCH/PUT /bookingimages/1
  # PATCH/PUT /bookingimages/1.json
  def update
      if @bookingimage.update(bookingimage_params)
        redirect_to administrator_editbooking_path(:id => @bookingimage.bookings_id), notice: 'Bildet er blitt oppdatert' 
      else
        redirect_to administrator_editbooking_path(:id => @bookingimage.bookings_id), notice: 'Endringene ble ikke lagret. Husk å ha en skikkelig beskrivelse'
    end
  end

  # DELETE /bookingimages/1
  # DELETE /bookingimages/1.json
  def destroy
    @bookingimage.destroy
    redirect_to administrator_editbooking_path, notice: 'Et bildet har blitt slettet' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingimage
      @bookingimage = Bookingimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookingimage_params
      params.require(:bookingimage).permit(:image, :description, :fotograf, :bookings_id)
    end
end
