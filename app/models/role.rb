# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Role < ApplicationRecord
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles

  has_many :role_permissions, dependent: :destroy
  has_many :permissions, through: :role_permissions

  has_many :role_menus, dependent: :destroy
  has_many :menus, through: :role_menus
end
