require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        :title => "Title",
        :author => "Author",
        :file => "Story Document"
      ),
      Work.create!(
        :title => "Title",
        :author => "Author",
        :file => "Story Document"
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Story Document".to_s, :count => 2
  end
end
