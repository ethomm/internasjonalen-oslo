class FrontpageImage < ApplicationRecord
  mount_uploader :image_url, FrontpageUploader
  before_create :set_default_status

  enum status: { unpublished: 0 , published: 1}

  def set_default_status
    self.status = 0
  end
end
