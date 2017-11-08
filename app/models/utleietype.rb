class Utleietype < ApplicationRecord
	has_many :utleieitems
	validates :title, presence: true
end
