require 'spec_helper'

describe "price_of_components/index" do
  before(:each) do
    assign(:price_of_components, [
      stub_model(PriceOfComponent,
        :price_range_id => 1,
        :price => 1.5,
        :component => "Component",
        :full_name => "Full Name"
      ),
      stub_model(PriceOfComponent,
        :price_range_id => 1,
        :price => 1.5,
        :component => "Component",
        :full_name => "Full Name"
      )
    ])
  end

  it "renders a list of price_of_components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Component".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
  end
end
