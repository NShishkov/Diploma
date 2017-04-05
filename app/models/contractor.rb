class Contractor < ApplicationRecord
	has_and_belongs_to_many :services
	has_many :role_users, :as => :us_role
	has_many :offers
	has_many :reviews
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => ":style/no-ava.png"
	do_not_validate_attachment_file_type :photo

	validates :name, :presence => true, :length => {:maximum => 16}
	validates :surname, :presence => true, :length => {:maximum => 16}
	validates :patronymic, :presence => true, :length => {:maximum => 16}
	validates :phone_number, :uniqueness => true, :presence => true, :length => {:maximum => 12}
	validates :rating, :presence => true
	validates :address, :presence => true, :length => {:maximum => 64}
	validates :info, :presence => true

	paginates_per 5

end