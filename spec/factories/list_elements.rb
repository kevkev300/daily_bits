FactoryBot.define do
  factory :list_element do
    lists { nil }
    subject { "MyString" }
    text { "MyText" }
    reference { "MyString" }
  end
end
