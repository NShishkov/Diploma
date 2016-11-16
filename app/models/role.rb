class Role < ApplicationRecord
	has_many :role_user
	validates :name, :uniqueness => true, :presence => true, :length => {:maximum => 16}
end
