class Tekniskcategory < ApplicationRecord
	has_many :tekniskitems, dependent: :destroy
	validates :title, presence: true
end
