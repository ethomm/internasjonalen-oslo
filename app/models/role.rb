class Role < ApplicationRecord
  enum stilling: { ingen: 0, leder: 1, booking: 2, teknisk: 3}
  belongs_to :contactperson , optional: true
  belongs_to :globalsetting
end
