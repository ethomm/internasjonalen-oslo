class Booking < ApplicationRecord
	has_many :bookingimages, dependent: :destroy
	before_create :create_slug

	def create_slug
    	self.slug = self.title.parameterize
  	end
end
