class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.references :car, null: false, foreign_key: true
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
