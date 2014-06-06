require 'spec_helper'

describe "description_of_components/index" do
  before(:each) do
    assign(:description_of_components, [
      stub_model(DescriptionOfComponent,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(DescriptionOfComponent,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of description_of_components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
