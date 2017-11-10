class Tekniskcategory < ApplicationRecord
	has_many :tekniskitems
	validates :title, presence: true
end
