json.extract! room, :id, :name, :description, :price, :created_at, :updated_at
json.url room_url(room, format: :json)
