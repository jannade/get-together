class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates_presence_of :name, :location, :price, :category
  mount_uploader :photo, PhotoUploader
end
