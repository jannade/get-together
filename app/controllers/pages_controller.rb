class PagesController < ApplicationController
  def home
  end

  def mylistings
    @user = current_user
    @spaces = Space.where(user_id: @user.id)
    @spaces.each do |space|
      @bookings = Booking.where(space_id: space.id)
    end
  end

  def mybookings
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
  end
end
