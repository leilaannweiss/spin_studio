class SpinClass < ApplicationRecord
  has_many :members
  has_many :studios, through: :members
end
