class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :customer_bookings, foreign_key: 'customer_id', class_name: 'Booking'
  has_many :owner_cars, foreign_key: 'owner_id', class_name: 'Car'
  has_many :owner_bookings, through: :owner_cars, source: :bookings
end
