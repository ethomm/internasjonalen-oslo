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
      if @omoss.update(omoss_params)
        flash[:notice] = "Om oss ble oppdatert"
        redirect_to administrator_path
      else
        render :edit, layout: 'admin', notice: "Husk at alle områder må være fylt inn ordentlig!"
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
