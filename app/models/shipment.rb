class Shipment < ApplicationRecord
  belongs_to :shipping_line
  belongs_to :loading_port, class_name: "Port", foreign_key: "loading_port_id"

   belongs_to :offloading_port, class_name: "Port", foreign_key: "offloading_port_id"
end

 