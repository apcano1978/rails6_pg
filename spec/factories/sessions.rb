FactoryBot.define do
  factory :session do
    token { "MyString" }
    status { false }
    user { nil }
  end
end
