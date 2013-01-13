class AddShowInFullAddressFlags < ActiveRecord::Migration
  def change
    add_column :self_delivery_points, :show_country, :boolean, :default => true
    add_column :self_delivery_points, :show_state, :boolean, :default => true
  end
end
