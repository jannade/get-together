class BookingsController < ApplicationController
  def index
    @bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @space = Space.find(params[:space_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space = Space.find(params[:space_id])
    @booking.user = current_user

    if @booking.save
      redirect_to mybookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.delete
    redirect_to mybookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :space_id)
  end
end
