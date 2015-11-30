json.array!(@trips) do |trip|
  json.extract! trip, :id, :from, :to, :date, :round_trip
  json.url trip_url(trip, format: :json)
end
