require 'spec_helper'

describe "proposals/show" do
  before(:each) do
    @proposal = assign(:proposal, stub_model(Proposal,
      :thought => "Thought",
      :abstract => "MyText",
      :description => "MyText",
      :sponsored => false,
      :status => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Thought/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
