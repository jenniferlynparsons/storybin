require 'rails_helper'

feature "edit an issue" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:issue){FactoryBot.create(:issue)}

  before(:each) do
    sign_in(user)
  end
  scenario 'can edit issues' do
    visit edit_issue_path(issue)
    fill_in 'issue[number]', with: '500'
    click_on 'Submit'
    expect(page).to have_text('Issue was successfully updated')
  end
end
