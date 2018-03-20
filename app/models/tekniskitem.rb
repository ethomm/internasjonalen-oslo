class Tekniskitem < ApplicationRecord
  belongs_to :tekniskcategory, optional: true
  validates :title, presence: true, length: {minimum: 3}
  validates :antall, presence: true, numericality: true
end
