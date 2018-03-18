class BarimagesController < ApplicationController
	before_action :set_barimage, only: [:edit, :update, :destroy]

	def create
		@barimage = Barimage.new(barimage_params)
		if @barimage.save
				flash.now[:notice] = "New image added"
				redirect_to edit_bar_path(@barimage.bar_id)
		else
				flash.now[:alert] = "Obs dette gikk ikke helt etter planen"
				redirect_to edit_bar_path(@barimage.bar_id)
		end
	end




	private
		def set_barimage
			@barimage = Barimage.find(params[:id])
		end

		def barimage_params
			params.require(:barimage).permit(:image_url, :description, :fotograf, :bar_id)
		end
end
