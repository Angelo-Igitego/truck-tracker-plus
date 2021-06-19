json.extract! trip_container, :id, :trip_id, :container_number, :container_height, :container_weight, :container_length, :container_gross_weight, :container_net_weight, :container_tare, :container_commodity, :customer_id, :created_at, :updated_at
json.url trip_container_url(trip_container, format: :json)
