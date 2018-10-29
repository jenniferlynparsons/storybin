require 'rails_helper'

feature "add an issue" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:issue){FactoryBot.create(:issue)}

  before(:each) do
    sign_in(user)
  end

  scenario "adds an issue" do
    visit issue_path(issue)
    expect(page).to have_content issue[:number]
    expect(page).to have_content issue[:start_date].strftime("%B %d, %Y")
    expect(page).to have_content issue[:end_date].strftime("%B %d, %Y")
    expect(page).to have_content issue[:pub_date].strftime("%B %d, %Y")
  end
end
