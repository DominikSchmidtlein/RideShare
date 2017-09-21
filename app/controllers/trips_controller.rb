class TripsController < ApplicationController
  def index
    # as a cutomer I care to see trips sorted by cost (factor of increased time to total trip)
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params.require(:id))
    @rides = @trip.rides
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip
    else
      flash[:error] = @trip.errors.full_messages.join(', ')
      render :new
    end
  end

  def search
    @ride = Ride.find(params.require(:ride_id))
    @trips = Trip.sorted_by_cost(@ride)
  end

  def share
    @trip = Trip.find(params.require(:id))
    @ride = Ride.find(params.require(:ride_id))
    @trip.time_with_ride(@ride)
  end

  private

  def trip_params
    params.require(:trip)
          .permit(:source, :destination, :earliest_departure, :latest_arrival)
  end
end
