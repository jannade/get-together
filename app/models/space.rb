class Space < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :location, :price, :type
  validates :type, inclusion: { in: ["Dinner party", "Pool party"] } #fill this up with more types
end
