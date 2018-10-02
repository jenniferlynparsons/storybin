require 'rails_helper'

feature "edit an issue" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  # let(:issue_fields) { attributes_for(:issue, user: nil) }

  before(:each) do
    sign_in(user)
    issue = FactoryBot.build(:issue)
  end

  scenario "edit an issue" do
    visit  "/issues"
    click_link "edit_issue_#{issue[:number]}"
    fill_in "issue[number]", with: ''

    select('2018', :from => 'issue_start_date_1i')
    select('September', :from => 'issue_start_date_2i')
    select('15', :from => 'issue_start_date_3i')

    select('2018', :from => 'issue_end_date_1i')
    select('November', :from => 'issue_end_date_2i')
    select('15', :from => 'issue_end_date_3i')

    select('2018', :from => 'issue_pub_date_1i')
    select('December', :from => 'issue_pub_date_2i')
    select('1', :from => 'issue_pub_date_3i')

    check 'issue[active]'

    click_button "Submit"
    
    expect(page).to have_content issue[:number]
    expect(page).to have_content("September 15, 2018")
    expect(page).to have_content("November 15, 2018")
    expect(page).to have_content("December 01, 2018")
  end
end
