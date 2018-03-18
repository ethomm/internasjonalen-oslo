class OmossesController < ApplicationController
  before_action :authenticate_user
  before_action :set_omoss, only: [:edit, :update]

  # GET /omosses/1/edit
  def edit
    render layout: 'admin'
  end

  # PATCH/PUT /omosses/1
  # PATCH/PUT /omosses/1.json
  def update
    respond_to do |format|
      if @omoss.update(omoss_params)
        format.html { redirect_to administrator_path, notice: 'Omoss was successfully updated.' }
        format.json { render :show, status: :ok, location: @omoss }
      else
        format.html { render :edit }
        format.json { render json: @omoss.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_omoss
      @omoss = Omoss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def omoss_params
      params.require(:omoss).permit(:title, :ingress, :body, :slogan)
    end
end
