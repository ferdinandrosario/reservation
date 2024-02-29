json.extract! reservation, :id, :date, :user_id, :hotel_id, :room_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
