class Car < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  AUTHORIZED_FUELS = ["Gasoline", "Electric", "Diesel"]
  validates :fuel, inclusion: { in: AUTHORIZED_FUELS }
end
