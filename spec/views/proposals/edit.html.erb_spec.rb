require 'spec_helper'

describe "proposals/edit" do
  before(:each) do
    @proposal = assign(:proposal, stub_model(Proposal,
      :thought => "MyString",
      :abstract => "MyText",
      :description => "MyText",
      :sponsored => false,
      :status => ""
    ))
  end

  it "renders the edit proposal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proposal_path(@proposal), "post" do
      assert_select "input#proposal_thought[name=?]", "proposal[thought]"
      assert_select "textarea#proposal_abstract[name=?]", "proposal[abstract]"
      assert_select "textarea#proposal_description[name=?]", "proposal[description]"
      assert_select "input#proposal_sponsored[name=?]", "proposal[sponsored]"
      assert_select "input#proposal_status[name=?]", "proposal[status]"
    end
  end
end
