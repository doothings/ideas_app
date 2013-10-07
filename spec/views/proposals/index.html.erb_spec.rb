require 'spec_helper'

describe "proposals/index" do
  before(:each) do
    assign(:proposals, [
      stub_model(Proposal,
        :thought => "Thought",
        :abstract => "MyText",
        :description => "MyText",
        :sponsored => false,
        :status => ""
      ),
      stub_model(Proposal,
        :thought => "Thought",
        :abstract => "MyText",
        :description => "MyText",
        :sponsored => false,
        :status => ""
      )
    ])
  end

  it "renders a list of proposals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Thought".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
