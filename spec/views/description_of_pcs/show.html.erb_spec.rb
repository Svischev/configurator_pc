require 'spec_helper'

describe "description_of_pcs/show" do
  before(:each) do
    @description_of_pc = assign(:description_of_pc, stub_model(DescriptionOfPc,
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
