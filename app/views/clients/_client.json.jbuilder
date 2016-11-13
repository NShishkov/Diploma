json.extract! client, :id, :surname, :name, :patronymic, :phone_number, :rating, :created_at, :updated_at
json.url client_url(client, format: :json)