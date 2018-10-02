require 'rails_helper'

feature "add a story" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let(:work_fields) { attributes_for(:work, user: nil) }

  before(:each) do
    sign_in(user)
  end

  scenario "adds a work" do
    visit  "/works/new"
    fill_in "Title", with: work_fields[:title]
    fill_in "Author", with: work_fields[:author]
    
    attach_file "work_file", Rails.root.join("spec", "fixtures", "attachments", "lsq-story.docx")
    click_button "Add Story"
    expect(page).to have_content work_fields[:title]
    expect(page).to have_content work_fields[:author]
  end
end
