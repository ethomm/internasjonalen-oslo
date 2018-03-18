class Bar < ApplicationRecord
	before_create :create_slug
	has_many :barimages
	def create_slug
    	self.slug = self.title.parameterize
  	end
end
