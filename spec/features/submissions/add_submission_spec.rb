require 'rails_helper'

feature "add an submission" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:submission){FactoryBot.create(:submission)}

  before(:each) do
    sign_in(user)
  end

  scenario "adds an submission" do
    visit submission_path(submission)
    expect(page).to have_content submission[:cover_letter]
    expect(page).to have_content submission[:active]
    expect(page).to have_content submission[:reprint]
    expect(page).to have_content submission[:reprint_date].strftime("%B %d, %Y")
    expect(page).to have_content submission[:reprint_publication]
  end
end
