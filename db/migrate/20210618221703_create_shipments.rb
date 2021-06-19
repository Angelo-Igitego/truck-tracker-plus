class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.string :number
      t.references :customer, foreign_key: true
      t.datetime :documents_received_at
      t.string :vessel_name
      t.references :shipping_line, foreign_key: true
      t.integer :loading_port_id
      t.integer :offloading_port_id
      t.datetime :eta_to_offloading_port
      t.datetime :bearthed_at
      t.datetime :discharged_at
      t.string :shipper_name
      t.text :remarks

      t.timestamps
    end
  end
end
