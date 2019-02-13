class User < ApplicationRecord
  has_many :spaces
  has_many :bookings
  validates_presence_of :name, :email, :password
  validates :password, length: { minimum: 8, too_short: "Your password must be at least 8 characters long" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
