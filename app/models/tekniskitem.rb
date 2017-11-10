class Tekniskitem < ApplicationRecord
  belongs_to :tekniskcategory, optional: true
end
