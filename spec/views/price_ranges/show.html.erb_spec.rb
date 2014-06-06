require 'spec_helper'

describe "price_ranges/show" do
  before(:each) do
    @price_range = assign(:price_range, stub_model(PriceRange,
      :name => "Name",
      :description => "MyText",
      :mix => 1,
      :max => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
