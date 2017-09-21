class RidesController < ApplicationController
  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new ride_params
    if @ride.save
      redirect_to search_trips_url(@ride)
    else
      flash[:error] = @ride.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
    @ride = Ride.find(params.require(:id))
  end

  def ride_params
    params.require(:ride)
          .permit(:source, :destination)
  end
end
