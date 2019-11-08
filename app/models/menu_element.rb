class MenuElement < ApplicationRecord
  has_many :menu_menu_elements, dependent: :destroy
  has_many :menus, through: :menu_menu_elements
end
