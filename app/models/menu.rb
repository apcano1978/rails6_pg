class Menu < ApplicationRecord
  has_many :role_menus, dependent: :destroy
  has_many :roles, through: :role_menus

  has_many :menu_menu_elements, dependent: :destroy
  has_many :menu_elements, through: :menu_menu_elements
end
