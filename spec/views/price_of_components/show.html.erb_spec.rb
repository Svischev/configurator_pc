require 'spec_helper'

describe "price_of_components/show" do
  before(:each) do
    @price_of_component = assign(:price_of_component, stub_model(PriceOfComponent,
      :price_range_id => 1,
      :price => 1.5,
      :component => "Component",
      :full_name => "Full Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/Component/)
    rendered.should match(/Full Name/)
  end
end
