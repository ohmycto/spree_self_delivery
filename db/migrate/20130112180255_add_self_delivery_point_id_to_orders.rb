class AddSelfDeliveryPointIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :self_delivery_point_id, :integer
  end
end
