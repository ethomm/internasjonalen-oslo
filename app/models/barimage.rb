class Barimage < ApplicationRecord
  belongs_to :bar
  mount_uploader :image_url, BookingUploader
  after_commit :remove_image_url!, on: :destroy
end
