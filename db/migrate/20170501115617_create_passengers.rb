class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :firstname
      t.string :lastname
      t.integer :rating

      t.timestamps
    end
  end
end
