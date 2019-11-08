# == Schema Information
#
# Table name: menu_menu_elements
#
#  id              :integer          not null, primary key
#  menu_id         :integer          not null
#  menu_element_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class MenuMenuElement < ApplicationRecord
  belongs_to :menu
  belongs_to :menu_element
end
