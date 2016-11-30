class Task < ApplicationRecord
  belongs_to :client
  belongs_to :brand
  belongs_to :model
  belongs_to :contractor
end
