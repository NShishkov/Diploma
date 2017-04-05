class Task < ApplicationRecord
	
	#has_many :pictures, :dependent => :destroy
	has_many :offers
  belongs_to :client
  belongs_to :brand
  belongs_to :model
  belongs_to :contractor
  
  has_many :uploads
  paginates_per 10
end
