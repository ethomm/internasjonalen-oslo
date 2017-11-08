class Utleieitem < ApplicationRecord
	belongs_to :utleietype
	validates :antall, presence: true
	validates :brand , presence: true
	validates :title, presence: true
end
