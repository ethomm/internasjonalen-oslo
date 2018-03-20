class FrontpageImage < ApplicationRecord
  mount_uploader :image_url, FrontpageUploader
  before_create :set_default_status
  after_commit :remove_image_url!, on: :destroy
  enum status: { unpublished: 0 , published: 1}

  validates_presence_of :image_url

  def set_default_status
    self.status = 0
  end
end
