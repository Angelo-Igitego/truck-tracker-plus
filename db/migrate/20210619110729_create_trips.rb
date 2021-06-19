class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.references :truck, foreign_key: true
      t.references :shipment, foreign_key: true
      t.integer :driver_id
      t.string :number
      t.integer :loading_port_id
      t.string :offloading_site
      t.datetime :onloaded_at
      t.string :offloaded_at

      t.timestamps
    end
  end
end
