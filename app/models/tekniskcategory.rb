class Tekniskcategory < ApplicationRecord
	has_many :tekniskitems, dependent: :destroy
	validates :title, presence: true, length: { minimum: 4 }
end
