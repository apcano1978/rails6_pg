# == Schema Information
#
# Table name: menu_elements
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MenuElement < ApplicationRecord
  has_many :menu_menu_elements, dependent: :destroy
  has_many :menus, through: :menu_menu_elements

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
end
