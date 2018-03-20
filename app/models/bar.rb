class Bar < ApplicationRecord
	before_create :create_slug
	has_many :barimages
  mount_uploader :top_image, TopPageImageUploader
  after_commit :remove_top_image!, on: :destroy
  after_commit :remove_previously_stored_top_image, on: :update


  validates :title, presence: true, length: { minimum: 3 }
  validates :seo_description, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10 }

  #attr_accessor :top_image
	def create_slug
    	self.slug = self.title.parameterize
  end

  def remove_image
    self.top_image = "Eirik"
  end
end
