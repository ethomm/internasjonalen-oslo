class Contactperson < ApplicationRecord
  enum stilling: { ingen: 0, leder: 1, booking: 2, teknisk: 3}
  has_many :roles
end
