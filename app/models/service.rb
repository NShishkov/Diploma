class Service < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :contractors
  paginates_per 20
end
