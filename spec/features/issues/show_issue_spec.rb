require 'rails_helper'

feature "delete an issue" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:issue){FactoryBot.create(:issue)}

  before(:each) do
    sign_in(user)
  end
  scenario 'can delete issues' do
    puts issues_path
    visit issues_path
    find(:xpath, '//a[contains(@class,"is-link")]').click
    expect(page).to have_text("Start date:")
  end

end
