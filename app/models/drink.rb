class Drink < ApplicationRecord
  	belongs_to :category
  	before_create :create_slug
  	mount_uploader :picture, DrinkimageUploader
  	validate 	:picture_size
	
	def create_slug
    	self.slug = self.title.parameterize
  	end
  	private
		def picture_size
			if picture.size > 1.megabytes
				errors.add(:picture, "Bildet må være mindre enn 1MB. Det er ikke noe poeng å laste opp så tunge bilder. Da blir nettsiden treig... Tenk miljø ;) ")
			end
		end
end
