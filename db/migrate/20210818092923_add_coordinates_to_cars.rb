class AddCoordinatesToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :name, :string
    add_column :cars, :address, :string
    add_column :cars, :latitude, :float
    add_column :cars, :longitude, :float
  end
end
