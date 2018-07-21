require 'rails_helper'

RSpec.describe "submissions/edit", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :cover_letter => "MyText",
      :active => false,
      :simultaneous => false,
      :reprint => false,
      :status => "MyString"
    ))
  end

  it "renders the edit submission form" do
    render

    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do

      assert_select "textarea[name=?]", "submission[cover_letter]"

      assert_select "input[name=?]", "submission[active]"

      assert_select "input[name=?]", "submission[simultaneous]"

      assert_select "input[name=?]", "submission[reprint]"

      assert_select "input[name=?]", "submission[status]"
    end
  end
end
