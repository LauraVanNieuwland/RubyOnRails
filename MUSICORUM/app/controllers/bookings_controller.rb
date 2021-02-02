class BookingsController < ApplicationController
  def index
    @instrument = Instrument.find(params[:instrument_id])
    @bookings = Booking.all
  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @instrument = Instrument.find(params[:instrument_id])
    @booking.user_id = current_user.id
    @booking.instrument = @instrument
    if @booking.save
      redirect_to users_path
    else
      render :new
    end
    @booking.save
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Booked"
    @booking.save
    redirect_to users_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to users_path
  end

  private
  def strong_params
    params.require(:booking).permit(:start_date, :end_date, :price, :status)
  end
end
