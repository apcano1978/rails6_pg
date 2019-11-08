# == Schema Information
#
# Table name: menus
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Menu < ApplicationRecord
  has_many :role_menus, dependent: :destroy
  has_many :roles, through: :role_menus

  has_many :menu_menu_elements, dependent: :destroy
  has_many :menu_elements, through: :menu_menu_elements

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
end
