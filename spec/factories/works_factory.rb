FactoryBot.define do
  factory :work do
    title { Faker::Book.title }
    author { Faker::FunnyName.name_with_initial }
    user
    work_file {Rails.root.join("spec", "fixtures", "attachments", "lsq-story.docx")}
  end
end
