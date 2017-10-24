class CreateServiceOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :service_options do |t|
      t.integer :service_id
      t.integer :option_id

      t.timestamps
    end
  end
end
