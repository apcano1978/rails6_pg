require 'rails_helper'

RSpec.describe MenuElement, type: :model do
  context 'validations' do
    it { should validate_presence_of :code }
    it { should validate_uniqueness_of :code }
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many :menu_menu_elements }
    it { should have_many :menus }
  end
end
