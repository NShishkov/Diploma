json.extract! contractor, :id, :surname, :name, :patronymic, :address, :phone_number, :rating, :info, :created_at, :updated_at
json.url contractor_url(contractor, format: :json)