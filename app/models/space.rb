class Space < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :location, :price, :category
  mount_uploader :photo, PhotoUploader
end
