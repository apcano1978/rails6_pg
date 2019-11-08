require 'rails_helper'

RSpec.describe Menu, type: :model do
  context 'validations' do
    it { should validate_presence_of :code }
    it { should validate_uniqueness_of :code }
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many :menu_menu_elements }
    it { should have_many :menu_elements }
    it { should have_many :role_menus }
    it { should have_many :roles }
  end
end
