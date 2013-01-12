class AddSelfDeliveryPointIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :self_delivery_point_id, :integer
  end
end
