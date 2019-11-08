class RoleMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :role
end
