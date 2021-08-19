class Car < ApplicationRecord
  AUTHORIZED_FUELS = ["Gasoline", "Electric", "Diesel"]
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  validates :fuel, inclusion: { in: AUTHORIZED_FUELS }
  geocoded_by :address
end
