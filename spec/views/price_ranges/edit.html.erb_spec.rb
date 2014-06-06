require 'spec_helper'

describe "price_ranges/edit" do
  before(:each) do
    @price_range = assign(:price_range, stub_model(PriceRange,
      :name => "MyString",
      :description => "MyText",
      :mix => 1,
      :max => 1
    ))
  end

  it "renders the edit price_range form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_range_path(@price_range), "post" do
      assert_select "input#price_range_name[name=?]", "price_range[name]"
      assert_select "textarea#price_range_description[name=?]", "price_range[description]"
      assert_select "input#price_range_mix[name=?]", "price_range[mix]"
      assert_select "input#price_range_max[name=?]", "price_range[max]"
    end
  end
end
