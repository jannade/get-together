class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home, :spaces, :space]

  def home
    @user = current_user
  end

  def mylistings
    @user = current_user
    @spaces = Space.where(user_id: @user.id)
    @bookings = @spaces.select { |space| Booking.where(space_id: space.id) }
  end

  def mybookings
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
  end
end
