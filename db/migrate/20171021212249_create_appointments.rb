class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_time
      t.string :customer_name
      t.integer :total_value

      t.timestamps
    end
  end
end
