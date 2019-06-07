class Studio < ApplicationRecord
  belongs_to :gym
  has_many :members
  has_many :spin_classes, through: :members
end
