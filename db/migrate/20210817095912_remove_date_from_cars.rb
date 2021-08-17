class RemoveDateFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column(:cars, :date_start)
    remove_column(:cars, :date_end)
  end
end
