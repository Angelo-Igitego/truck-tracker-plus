class AddShipmentNumberToContainers < ActiveRecord::Migration[5.1]
  def change
    add_column :containers, :shipment_number, :string, default: ""
    # add_index :containers, :shipment_number, unique: true
  end
end
