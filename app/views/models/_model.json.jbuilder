json.extract! model, :id, :brand_id, :name, :description, :years_of_production, :created_at, :updated_at
json.url model_url(model, format: :json)