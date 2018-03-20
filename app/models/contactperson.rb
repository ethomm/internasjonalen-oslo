class Contactperson < ApplicationRecord
  enum stilling: { ingen: 0, leder: 1, booking: 2, teknisk: 3}
  before_save {self.email = email.downcase}
  has_many :roles

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
  validates :name ,presence: true, length: { minimum: 2 }
  validates :email, presence: true, length: { maximum: 250 },
                    format: { with: VALID_EMAIL_REGEX }
end
