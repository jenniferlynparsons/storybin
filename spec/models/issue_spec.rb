# == Schema Information
#
# Table name: issues
#
#  id         :bigint(8)        not null, primary key
#  pub_date   :date
#  start_date :date
#  end_date   :date
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  number     :integer
#

require 'rails_helper'
require 'factory_bot'

RSpec.describe Issue, type: :model do
  it "is valid with valid attributes" do
    issue = FactoryBot.build(:issue)
    expect(issue).to be_valid
  end

  it "is not valid without a pub_date" do
    issue = FactoryBot.build(:issue, pub_date: nil)
    expect(issue).to_not be_valid
  end

  it "is not valid without a start_date" do
    issue = FactoryBot.build(:issue, start_date: nil)
    expect(issue).to_not be_valid
  end

  it "is not valid without a end_date" do
    issue = FactoryBot.build(:issue, start_date: nil)
    expect(issue).to_not be_valid
  end

  it "is not valid without a number" do
    issue = FactoryBot.build(:issue, number: nil)
    expect(issue).to_not be_valid
  end
end
