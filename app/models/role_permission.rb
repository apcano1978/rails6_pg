# == Schema Information
#
# Table name: role_permissions
#
#  id            :integer          not null, primary key
#  role_id       :integer          not null
#  permission_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RolePermission < ApplicationRecord
  belongs_to :role
  belongs_to :permission
end
