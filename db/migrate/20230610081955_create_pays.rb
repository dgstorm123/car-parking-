class CreatePays < ActiveRecord::Migration[7.0]
  def change
    create_table :pays do |t|
      t.string :car_plate
      t.datetime :check_out_time
      t.decimal :amount
      t.string :pay_option

      t.timestamps
    end
  end
end
