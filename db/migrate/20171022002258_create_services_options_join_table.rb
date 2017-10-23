class CreateServicesOptionsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :services, :options do |t|
      t.index [:service_id, :option_id]
    end
  end
end
