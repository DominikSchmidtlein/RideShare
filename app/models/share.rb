class Share < ApplicationRecord
  belongs_to :ride
  belongs_to :trip

  enum status: %i[requested approved]
end
