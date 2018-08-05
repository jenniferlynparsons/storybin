FactoryBot.define do
  factory :work do
    title { Faker::Book.title }
    author { Faker::FunnyName.name_with_initial }
    user
  end
end
