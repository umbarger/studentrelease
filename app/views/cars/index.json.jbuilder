json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :year, :color, :license_plate, :license_state
  json.url car_url(car, format: :json)
end
