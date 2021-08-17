class RemoveDateFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column(:car, :date_start)
    remove_column(:car, :date_end)
  end
end
