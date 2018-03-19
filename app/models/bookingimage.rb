class Bookingimage < ApplicationRecord
	mount_uploader :image, BookingUploader
  after_commit :remove_image!, on: :destroy
	belongs_to :booking, optional: true

end
