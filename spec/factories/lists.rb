# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    name { 'MyString' }
    description { 'MyText' }
    user { nil }
  end
end
