class Model < ApplicationRecord
  belongs_to :brand
  validates :name, :presence => true, :length => {:maximum => 32}
  validates :description, :presence => true
  validates :years_of_production, :presence => true, :length => {:maximum => 32}
end
