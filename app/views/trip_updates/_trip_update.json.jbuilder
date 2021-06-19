json.extract! trip_update, :id, :trip_id, :location_details, :eta_border, :eta_site, :updated_by_user_id, :latitude, :longitude, :country, :province, :district, :created_at, :updated_at
json.url trip_update_url(trip_update, format: :json)
