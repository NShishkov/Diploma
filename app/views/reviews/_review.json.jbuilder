json.extract! review, :id, :task_id, :contractor_id, :client_id, :rating, :advantages, :disadvantages, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)