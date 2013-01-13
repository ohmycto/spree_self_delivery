class AddStateNameToSelfDeliveryPoints < ActiveRecord::Migration
  def change
    add_column :self_delivery_points, :state_name, :string
  end
end
