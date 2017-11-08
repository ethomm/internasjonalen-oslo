class BookingimagesController < ApplicationController
  before_action :authenticate_user
  before_action :set_bookingimage, only: [ :update, :destroy]


  # POST /bookingimages
  # POST /bookingimages.json
  def create
    @bookingimage = Bookingimage.new(bookingimage_params)
      if @bookingimage.save
        redirect_to administrator_editbooking_path(:id => @bookingimage.bookings_id), notice: 'Bookingimage was successfully created.'
      else
        redirect_to administrator_editbooking_path(:id => bookingimage_params[:bookings_id]), notice: 'Bilde ble ikke lagret'
        puts "Errors: " + @bookingimage.errors.count.to_s
        puts @bookingimage.errors.full_messages
      end
  end

  # PATCH/PUT /bookingimages/1
  # PATCH/PUT /bookingimages/1.json
  def update
    respond_to do |format|
      if @bookingimage.update(bookingimage_params)
        format.html { redirect_to @bookingimage, notice: 'Bookingimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookingimage }
      else
        format.html { render :edit }
        format.json { render json: @bookingimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingimages/1
  # DELETE /bookingimages/1.json
  def destroy
    @bookingimage.destroy
    redirect_to :back, notice: 'Bookingimage was successfully destroyed.' 
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
