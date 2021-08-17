class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :car
  has_one :owner, through: :car
end
