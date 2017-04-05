class Review < ApplicationRecord
  belongs_to :task
  belongs_to :contractor
  belongs_to :client
end
