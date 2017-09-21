class Driver < ApplicationRecord
  has_one :car
  has_many :trips
end
