require 'rails_helper'

feature "see the homepage" do
  scenario "sees the page" do
    visit  "/"
    expect(page).to have_content("Welcome to Luna Station Quarterly's Storybin")
  end
end
