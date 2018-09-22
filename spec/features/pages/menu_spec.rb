require 'rails_helper'

feature "see the menu" do
  scenario "sees the menu" do
    visit  "/"
    expect(page).to have_link("Users")
    expect(page).to have_link("Works")
    expect(page).to have_link("Submissions")
    expect(page).to have_link("Issues")
    expect(page).to have_link("Sign In")
  end
end