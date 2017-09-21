class SharesController < ApplicationController
  def create
    @trip = Trip.find(params.require(:trip_id))
    @ride = Ride.find(params.require(:ride_id))
    @share = @trip.shares.new(ride: @ride, status: :requested)
    if @share.save
      redirect_to ride_path(@ride)
    else
      flash[:error] = @share.errors.full_messages.join(', ')
      redirect_to share_trip_path(@trip, @ride)
    end
  end
end
