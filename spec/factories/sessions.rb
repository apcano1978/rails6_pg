FactoryBot.define do
  factory :session do
    token { "ExampleToken" }
    active { false }
    user { build(:user) }
  end
end
