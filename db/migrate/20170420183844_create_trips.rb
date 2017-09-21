class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :source
      t.string :destination
      t.integer :duration
      t.datetime :earliest_departure
      t.datetime :latest_arrival
      t.datetime :departure
      t.datetime :arrival

      t.timestamps
    end
  end
end
