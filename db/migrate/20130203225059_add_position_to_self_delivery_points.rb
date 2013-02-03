class AddPositionToSelfDeliveryPoints < ActiveRecord::Migration
  def change
    add_column :self_delivery_points, :position, :integer
  end
end
