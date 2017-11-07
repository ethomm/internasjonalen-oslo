class UtleiesController < ApplicationController
  before_action :set_utleie, only: [ :edit, :update]
  layout 'admin'

  # GET /utleies/1/edit
  def edit
  end


  # PATCH/PUT /utleies/1
  # PATCH/PUT /utleies/1.json
  def update
      if @utleie.update(utleie_params)
        redirect_to administrator_utleie_path, notice: 'Utleie was successfully updated.'
      else
        render :edit 
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utleie
      @utleie = Utleie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utleie_params
      params.require(:utleie).permit(:ingress, :booking_email, :contactperson, :contact_email, :contact_position, :contact_number, :show_contact_number)
    end
end
