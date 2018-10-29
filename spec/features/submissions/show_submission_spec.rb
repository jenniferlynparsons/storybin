require 'rails_helper'

feature "delete an submission" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:submission){FactoryBot.create(:submission)}

  before(:each) do
    sign_in(user)
  end
  scenario 'can delete submissions' do
    puts submissions_path
    visit submissions_path
    find(:xpath, '//a[contains(@class,"is-link")]').click
    expect(page).to have_text("Cover letter:")
  end

end