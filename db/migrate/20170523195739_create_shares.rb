class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :ride, index: true
      t.integer :status
      t.integer :detour_duration

      t.timestamps
    end
  end
end
