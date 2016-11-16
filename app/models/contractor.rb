class Contractor < ApplicationRecord
	has_many :role_users, :as => :us_role
	
	validates :name, :presence => true, :length => {:maximum => 16}
	validates :surname, :presence => true, :length => {:maximum => 16}
	validates :patronymic, :presence => true, :length => {:maximum => 16}
	validates :phone_number, :uniqueness => true, :presence => true, :length => {:maximum => 12}
	validates :rating, :presence => true
	validates :address, :presence => true, :length => {:maximum => 64}
	validates :info, :presence => true
end
