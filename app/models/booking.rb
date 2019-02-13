class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates_presence_of :date
  validate :future_event

  private

  def future_event
    errors.add(:date, "Can't be in the past!") if date < Time.now
  end
end
