# == Schema Information
#
# Table name: permissions
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Permission < ApplicationRecord
  has_many :role_permissions, dependent: :destroy
  has_many :roles, through: :role_permissions

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
end
