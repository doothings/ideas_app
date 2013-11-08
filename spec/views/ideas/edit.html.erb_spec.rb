require 'spec_helper'

describe "ideas/edit" do
  before(:each) do
    @idea = assign(:idea, stub_model(Idea,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit idea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do
      assert_select "input#idea_title[name=?]", "idea[title]"
      assert_select "input#idea_content[name=?]", "idea[content]"
    end
  end
end
