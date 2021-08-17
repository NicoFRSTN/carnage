class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :fuel
      t.float :price
      t.string :gearbox
      t.date :date_start
      t.date :date_end
      t.references :owner, foreign_key: { to_table: :users }
      t.string :photo_url
      t.timestamps
    end
  end
end
