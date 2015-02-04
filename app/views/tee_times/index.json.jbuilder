json.array!(@tee_times) do |tee_time|
  json.extract! tee_time, :id, :start, :end, :length, :Booking_id
  json.url tee_time_url(tee_time, format: :json)
end
