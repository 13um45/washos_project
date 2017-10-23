class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :value
      t.references :appointment, foreign_key: true
      t.references :package, foreign_key: true

      t.timestamps
    end
  end
end
