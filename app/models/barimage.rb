class Barimage < ApplicationRecord
  belongs_to :bar
  mount_uploader :image_url, BookingUploader
end
