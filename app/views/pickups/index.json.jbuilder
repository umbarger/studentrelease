json.array!(@pickups) do |pickup|
  json.extract! pickup, :id, :date, :time, :group
  json.url pickup_url(pickup, format: :json)
end
