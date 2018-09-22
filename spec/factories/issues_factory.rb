FactoryBot.define do
  factory :issue do
    number { Faker::Number.non_zero_digit }
    active { true }
  end
end
