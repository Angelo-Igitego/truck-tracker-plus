class CreateContainers < ActiveRecord::Migration[5.1]
  def change
    create_table :containers do |t|
      t.string :number, null: false, unique: true
      t.integer :driver_id
      t.datetime :docs_rcd
      t.string :shipper
      t.integer :port_of_loading_id
      t.string :commodity
      t.string :bill_of_ladding_number
      t.string :service
      t.decimal :size
      t.decimal :gross_weight_kgs
      t.references :shipping_line, foreign_key: true
      t.datetime :eta_dar
      t.datetime :vessel_berthe_date
      t.datetime :vessel_discharge_date
      t.datetime :loading_at_dar
      t.references :truck, foreign_key: true
      t.string :truck_position
      t.datetime :eta_border
      t.datetime :etd_border
      t.string :offloading_site
      t.datetime :eta_site
      t.boolean :offloaded
      t.text :remark

      t.timestamps
    end
  end
end
