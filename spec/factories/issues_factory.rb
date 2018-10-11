FactoryBot.define do
  factory :issue do
    id { Faker::Number.non_zero_digit }
    number { Faker::Number.non_zero_digit }
    active { true }
    pub_date {Faker::Date.between(2.days.ago, Date.today)}
    start_date {Faker::Date.between(2.days.ago, Date.today)}
    end_date {Faker::Date.between(2.days.ago, Date.today)}
  end
end
