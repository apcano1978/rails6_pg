require 'rails_helper'

RSpec.describe Permission, type: :model do
  context 'validations' do
    it { should validate_presence_of :code }
    it { should validate_uniqueness_of :code }
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many :role_permissions }
    it { should have_many :roles }
  end
end
