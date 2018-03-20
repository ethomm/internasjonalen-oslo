class Barimage < ApplicationRecord
  belongs_to :bar
  mount_uploader :image_url, BookingUploader
  after_commit :remove_image_url!, on: :destroy

  validates_presence_of :image_url
  validates :description, presence: true, length: { minimum: 5 }
end
