json.extract! shipment, :id, :number, :documents_received_at, :vessel_id, :shipping_line_id, :loading_port_id, :offloading_port_id, :eta_to_offloading_port, :bearthed_at, :discharged_at, :shipper_name, :remarks, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
