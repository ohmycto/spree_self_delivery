class CreateSelfDeliveryPoints < ActiveRecord::Migration
  def change
    create_table :spree_self_delivery_points do |t|
      t.integer :country_id
      t.integer :state_id
      t.string :state_name
      t.string :city
      t.string :address1
      t.string :hours
      t.text :description
      t.boolean :show_country
      t.boolean :show_state
      t.decimal :cost, :precision => 8, :scale => 2
      t.integer :position

      t.timestamps
    end
  end
end
