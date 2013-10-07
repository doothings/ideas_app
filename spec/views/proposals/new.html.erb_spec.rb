require 'spec_helper'

describe "proposals/new" do
  before(:each) do
    assign(:proposal, stub_model(Proposal,
      :thought => "MyString",
      :abstract => "MyText",
      :description => "MyText",
      :sponsored => false,
      :status => ""
    ).as_new_record)
  end

  it "renders new proposal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proposals_path, "post" do
      assert_select "input#proposal_thought[name=?]", "proposal[thought]"
      assert_select "textarea#proposal_abstract[name=?]", "proposal[abstract]"
      assert_select "textarea#proposal_description[name=?]", "proposal[description]"
      assert_select "input#proposal_sponsored[name=?]", "proposal[sponsored]"
      assert_select "input#proposal_status[name=?]", "proposal[status]"
    end
  end
end
