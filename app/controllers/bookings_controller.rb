class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.planet = Planet.find(params[:planet_id])
    @booking.save
    if @booking.save
      redirect_to planet_path(@booking.planet)
    else
      render :new
    end
  end
end

private

def booking_params
  params.require(:booking).permit(:date_start, :date_end, :planet_id, :comment)
end
