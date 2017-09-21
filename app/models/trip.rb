class Trip < ApplicationRecord
  has_many :shares
  has_many :rides, through: :shares
  belongs_to :driver, optional: true
  has_one :car, through: :driver
  has_many :passengers, through: :ride

  attr_accessor :cost
  attr_accessor :detour_duration
  attr_accessor :ride_duration

  before_save :calculate_duration

  def self.sorted_by_cost(ride)
    Trip.all.sort_by { |trip| trip.time_with_ride(ride) }
  end

  def time_with_ride(ride)
    duration_calculator = DurationCalculator.new
    durations = duration_calculator.duration(source, destination,
                                             ride.source, ride.destination)
    if durations
      @ride_duration = durations[1]['value']
      total_duration = durations.sum { |x| x['value'] }
      @detour_duration = total_duration - duration
      @cost = @detour_duration / 500.0
    else
      @detour_duration = nil
      @cost = nil
    end
  end

  private

  def calculate_duration
    duration_calculator = DurationCalculator.new
    self.duration = duration_calculator.duration(source, destination)[0]['value']
  end
end
