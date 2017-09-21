class Ride < ApplicationRecord
  has_one :share
  has_one :trip, through: :share
  has_and_belongs_to_many :passengers
end
