class Car < ApplicationRecord
  AUTHORIZED_FUELS = ["Gasoline", "Electric", "Diesel"]
  AUTHORIZED_GEARBOXES = ["Manual", "Automatic", "Automanual"]
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  validates :fuel, inclusion: { in: AUTHORIZED_FUELS }
  validates :gearbox, inclusion: { in: AUTHORIZED_GEARBOXES }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
