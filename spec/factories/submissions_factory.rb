FactoryBot.define do
  factory :submission do
    id { Faker::Number.non_zero_digit }
    cover_letter {Faker::Lebowski.quote }
    active { true }
    reprint {true}
    reprint_date {Faker::Date.between(2.days.ago, Date.today)}
    reprint_publication {Faker::Book.title}
    status {"New"}
  end
end
