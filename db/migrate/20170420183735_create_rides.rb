class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :source
      t.string :destination
      t.datetime :earliest_departure
      t.datetime :latest_arrival
      t.datetime :departure
      t.datetime :arrival
      t.decimal :cost

      t.timestamps
    end
  end
end
