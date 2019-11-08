require 'rails_helper'

RSpec.describe Role, type: :model do
  context 'validations' do
    it { should validate_presence_of :code }
    it { should validate_uniqueness_of :code }
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many :user_roles }
    it { should have_many :users }
    it { should have_many :role_permissions }
    it { should have_many :permissions }
    it { should have_many :role_menus }
    it { should have_many :menus }
  end
end
