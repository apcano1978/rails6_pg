require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password_digest }
  end

  context 'associations' do
    it { should have_many :user_roles }
    it { should have_many :roles }
    it { should have_many :sessions }
  end
end
