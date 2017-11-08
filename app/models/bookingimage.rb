class Bookingimage < ApplicationRecord
	mount_uploader :image, BookingUploader
	belongs_to :booking, optional: true
end
