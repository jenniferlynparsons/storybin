# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE), not null
#  editor                 :boolean          default(FALSE), not null
#  submitter              :boolean          default(TRUE)
#  first_name             :string
#  last_name              :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with 'valid@example.com', 'password', 'Obi-Wan', 'Kenobi'

    expect(page).to have_content('Sign Out')
  end

  scenario 'with invalid email' do
    sign_up_with 'invalid_email', 'password', 'Obi-Wan', 'Kenobi'

    expect(page).to have_content('Sign In')
  end

  scenario 'with blank password' do
    sign_up_with 'valid@example.com', '', 'Obi-Wan', 'Kenobi'

    expect(page).to have_content('Sign In')
  end

  scenario 'with blank first name' do
    sign_up_with 'valid@example.com', 'test123', '', 'Kenobi'

    expect(page).to have_content('Sign In')
  end

  scenario 'with blank last name' do
    sign_up_with 'valid@example.com', 'test123', 'Obi-Wan', ''

    expect(page).to have_content('Sign In')
  end

  def sign_up_with(email, password, first, last)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    fill_in 'First name', with: first
    fill_in 'Last name', with: last
    click_button 'Sign up'
  end
end

feature 'User edits availability of users' do

end
