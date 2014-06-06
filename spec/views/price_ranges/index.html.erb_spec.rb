require 'spec_helper'

describe "price_ranges/index" do
  before(:each) do
    assign(:price_ranges, [
      stub_model(PriceRange,
        :name => "Name",
        :description => "MyText",
        :mix => 1,
        :max => 2
      ),
      stub_model(PriceRange,
        :name => "Name",
        :description => "MyText",
        :mix => 1,
        :max => 2
      )
    ])
  end

  it "renders a list of price_ranges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
