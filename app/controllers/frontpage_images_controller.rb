class FrontpageImagesController < ApplicationController
  before_action :authenticate_user, except: [:index]
  before_action :set_frontpage_image, only: [:destroy, :toggle_status]
  def index
    @frontpageImages = FrontpageImage.published
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { @frontpageImages }
    end
  end

  def create
    @frontpageImage = FrontpageImage.new(frontpage_image_params)
    if @frontpageImage.save
      flash.now[:notice] = "Forside bildet er lagt til"
      redirect_to administrator_frontpage_images_path
    else
      flash.now[:alert] = "Dette gikk ikke helt etter planen. Bildet ble ikke lagret på serveren. Prøv igjen eller ta kontakt med system administrator på 99598827"
      redirect_to administrator_frontpage_images_path
    end
  end

  def destroy
    @frontpageImage.destroy
      redirect_to administrator_frontpage_images_path
  end

  def toggle_status
    @frontpageImage.published? ? @frontpageImage.unpublished! : @frontpageImage.published!
    redirect_to administrator_frontpage_images_path
  end

  private
    def set_frontpage_image
      @frontpageImage = FrontpageImage.find(params[:id])
    end

    def frontpage_image_params
      params.require(:frontpage_image).permit(:image_url, :fotograf)
    end
end
