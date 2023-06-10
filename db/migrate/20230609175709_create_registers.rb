class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :phone_number
      t.decimal :amount
      t.datetime :arrival_time
      t.datetime :departure_time
      t.integer :slots
      t.string :license_plate
      t.string :vehicle_type

      t.timestamps
    end
  end
end
