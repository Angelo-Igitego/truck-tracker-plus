json.extract! customer, :id, :business_name, :po_box, :phone, :email, :contact_person_names, :contact_person_phone, :tin_number, :office_location, :created_at, :updated_at
json.url customer_url(customer, format: :json)
