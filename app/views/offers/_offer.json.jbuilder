json.extract! offer, :id, :price, :comment, :task_id, :contractor_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)