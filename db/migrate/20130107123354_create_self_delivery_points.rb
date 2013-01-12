class CreateSelfDeliveryPoints < ActiveRecord::Migration
  def change
    create_table :self_delivery_points do |t|
      t.integer :country_id
      t.integer :state_id
      t.string :city
      t.string :address1
      t.string :hours
      t.text :description

      t.timestamps
    end
  end
end
