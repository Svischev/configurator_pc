require 'spec_helper'

describe "description_of_pcs/index" do
  before(:each) do
    assign(:description_of_pcs, [
      stub_model(DescriptionOfPc,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(DescriptionOfPc,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of description_of_pcs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
