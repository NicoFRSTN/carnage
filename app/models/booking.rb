class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :car
  has_one :owner, through: :car
  validates :date_start, presence: { message: "You need to pick a rental start date" }
  validates :date_end, presence: { message: "You need to pick a rental end date" }

  def total_days
    ((date_end - date_start) + 1).to_i
  end

  def total_price
    ((date_end - date_start) + 1) * car.price
  end
end

# Rental from: <%= @booking.date_start  %> to: <%= @booking.date_end  %>.<br>
# Days rented: <%= ((@booking.date_end) - (@booking.date_start) + 1).to_i %> days. <br>
# Total rental price: <%= ((@booking.date_end) - (@booking.date_start) + 1) * (@booking.car.price) %> €.
