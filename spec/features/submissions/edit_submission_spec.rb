require 'rails_helper'

feature "edit an submission" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:submission){FactoryBot.create(:submission)}

  before(:each) do
    sign_in(user)
  end
  scenario 'can edit submissions' do
    visit edit_submission_path(submission)
    fill_in 'submission[cover_letter]', with: 'This is a new cover letter'
    click_on 'Update Submission'
    expect(page).to have_text('Submission was successfully updated')
  end
end
