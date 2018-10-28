require 'rails_helper'
require 'factory_bot'

feature "delete an issue" do
  let!(:user) { create(:user, password: "12345678", password_confirmation: "12345678") }
  let!(:issue){FactoryBot.create(:issue)}

  before(:each) do
    sign_in(user)
  end
  scenario 'can delete issues' do
    puts issues_path
    visit issues_path
    expect{
      find(:xpath, '//a[contains(@class,"is-danger")]').click
    }.to change(Issue, :count).by(-1)
  end

end
