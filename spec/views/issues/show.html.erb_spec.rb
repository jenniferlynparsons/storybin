require 'rails_helper'

RSpec.describe "issues/show", type: :view do
  before(:each) do
    @issue = assign(:issue, FactoryBot.create(:issue))
  end

  it "renders attributes in <p>" do
    render
  end
end
