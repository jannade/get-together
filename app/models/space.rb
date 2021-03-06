class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates_presence_of :name, :location, :price, :category
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch
  pg_search_scope :search_by_name_and_location,
    against: [:name, :location, :category],

    using: {
      tsearch: { prefix: true }
    }
end
