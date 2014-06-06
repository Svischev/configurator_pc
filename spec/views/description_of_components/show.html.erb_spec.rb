require 'spec_helper'

describe "description_of_components/show" do
  before(:each) do
    @description_of_component = assign(:description_of_component, stub_model(DescriptionOfComponent,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
