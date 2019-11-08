# == Schema Information
#
# Table name: role_menus
#
#  id         :integer          not null, primary key
#  menu_id    :integer          not null
#  role_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoleMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :role
end
