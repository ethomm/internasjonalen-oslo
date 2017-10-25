class Omoss < ApplicationRecord
	validates_inclusion_of :singleton_guard, :in => [0]
end
