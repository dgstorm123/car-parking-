json.extract! register, :id, :name, :phone_number, :amount, :arrival_time, :departure_time, :slots, :license_plate, :vehicle_type, :created_at, :updated_at
json.url register_url(register, format: :json)
