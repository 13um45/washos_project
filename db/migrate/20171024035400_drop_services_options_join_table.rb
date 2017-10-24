class DropServicesOptionsJoinTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :options_services
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
