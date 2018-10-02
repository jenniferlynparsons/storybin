require 'rails_helper'
require 'factory_bot'

RSpec.describe "issues/edit", type: :view do
  before(:each) do
    @issue = assign(:issue, FactoryBot.create(:issue))
  end

  it "renders the edit issue form" do
    render

    assert_select "form[action=?][method=?]", issue_path(@issue), "post" do
    end
  end
end
