class Car < ApplicationRecord
  AUTHORIZED_FUELS = ["Gasoline", "Electric", "Diesel"]
  AUTHORIZED_GEARBOXES = ["Manual", "Automatic", "Automanual"]
  RANGE_PRICES = ["0€-10€", "10€-20€", "20€-30€",
                  "30€-40€", "40€-50€", "50€-60€",
                  "60€-70€", "70€-80€", "80€-90€",
                  "90€-100€"]
  AUTHORIZED_ADDRESS = ["Paris", "Lyon", "Grenoble", "Marseille", "Bordeaux", "Saint-Étienne", "Nice"]

  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  validates :fuel, inclusion: { in: AUTHORIZED_FUELS }
  validates :gearbox, inclusion: { in: AUTHORIZED_GEARBOXES }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
