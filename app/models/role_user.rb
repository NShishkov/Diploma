class RoleUser < ApplicationRecord
  belongs_to :role
  belongs_to :user
  belongs_to :us_role, polymorphic: true
end
