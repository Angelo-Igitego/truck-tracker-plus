class CreateTripContainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_containers do |t|
      t.references :trip, foreign_key: true
      t.string :container_number
      t.decimal :container_height
      t.decimal :container_weight
      t.decimal :container_length
      t.decimal :container_gross_weight
      t.decimal :container_net_weight
      t.decimal :container_tare
      t.string :container_commodity
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
