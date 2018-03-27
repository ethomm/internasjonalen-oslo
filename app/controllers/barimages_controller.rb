class BarimagesController < ApplicationController
	before_action :authenticate_user
	before_action :set_barimage, only: [:edit, :update, :destroy]

	def create
		@barimage = Barimage.new(barimage_params)
		if @barimage.save
				flash[:notice] = "Nytt bilde ble lagt til"
				redirect_to edit_bar_path(@barimage.bar_id)
		else
				flash[:alert] = "For å legge til et bilde, må bildet både ha en fil (PNG, JPG, JPEG eller GIF), deretter må den ha en kort beskrivelse. Fotograf er valgfritt"
				redirect_to edit_bar_path(@barimage.bar_id)
		end
	end

	def destroy
		@barimage.destroy
		flash[:notice] = "Bildet er blitt slettet"
		redirect_to edit_bar_path(@barimage.bar_id)
	end




	private
		def set_barimage
			@barimage = Barimage.find(params[:id])
		end

		def barimage_params
			params.require(:barimage).permit(:image_url, :description, :fotograf, :bar_id)
		end
end
