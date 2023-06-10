class CreateMains < ActiveRecord::Migration[7.0]
  def change
    create_table :mains do |t|
      t.string :car_type
      t.string :car_plate
      t.datetime :check_in_time
      t.string :phone_number
      t.string :parking_slots

      t.timestamps
    end
  end
end
