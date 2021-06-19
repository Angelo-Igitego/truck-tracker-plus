json.extract! trip, :id, :truck_id, :shipment_id, :driver_id, :number, :loading_port_id, :offloading_site, :onloaded_at, :offloaded_at, :created_at, :updated_at
json.url trip_url(trip, format: :json)
