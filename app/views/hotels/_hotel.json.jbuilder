json.extract! hotel, :id, :name, :city, :about, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
