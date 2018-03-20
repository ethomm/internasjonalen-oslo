class Booking < ApplicationRecord
	has_many :bookingimages, dependent: :destroy
	before_create :create_slug

  validates :title, presence: true, length: {minimum: 4}
  validates :body, presence: true, length: {minimum: 10}
  validates :seodescription, presence: true, length: {minimum: 5}

	def create_slug
    	self.slug = self.title.parameterize
  	end
end
