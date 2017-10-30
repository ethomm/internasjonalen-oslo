class Category < ApplicationRecord
	has_many :drinks
	before_create :create_slug
	def create_slug
    	self.slug = self.title.parameterize
  	end
end
