class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :available_seats
      t.string :model
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
