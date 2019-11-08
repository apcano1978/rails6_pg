require 'rails_helper'

RSpec.describe Session, type: :model do
  context 'validations' do
    subject { build(:session) }

    it { should validate_presence_of :user_id }
    it { should validate_presence_of :token }
    it { should validate_uniqueness_of :token }
    it { should validate_presence_of :active }
  end

  context 'associations' do
    it { should belong_to :user }
  end
end
