class CreateStatusSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :status_slots do |t|
      t.string :vehicle_type
      t.string :license_plate
      t.boolean :status
      t.integer :slots

      t.timestamps
    end
  end
end
