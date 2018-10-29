require 'rails_helper'

feature "view a work" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let(:work_fields) { attributes_for(:work, user: nil) }

  before(:each) do
    sign_in(user)
  end

  scenario "can view a work" do
    visit  "/works/new"
    fill_in "Title", with: work_fields[:title]
    fill_in "Author", with: work_fields[:author]

    attach_file "work_file", work_fields[:work_file]
    click_button "Add Story"

    click_on "Back to Story Index"

    find(:xpath, '//a[contains(@class,"is-link")]').click
    expect(page).to have_text("by:")
  end
end