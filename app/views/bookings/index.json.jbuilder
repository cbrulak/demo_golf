json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :start, :end
  json.url booking_url(booking, format: :json)
end
