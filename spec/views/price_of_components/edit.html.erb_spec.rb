require 'spec_helper'

describe "price_of_components/edit" do
  before(:each) do
    @price_of_component = assign(:price_of_component, stub_model(PriceOfComponent,
      :price_range_id => 1,
      :price => 1.5,
      :component => "MyString",
      :full_name => "MyString"
    ))
  end

  it "renders the edit price_of_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_of_component_path(@price_of_component), "post" do
      assert_select "input#price_of_component_price_range_id[name=?]", "price_of_component[price_range_id]"
      assert_select "input#price_of_component_price[name=?]", "price_of_component[price]"
      assert_select "input#price_of_component_component[name=?]", "price_of_component[component]"
      assert_select "input#price_of_component_full_name[name=?]", "price_of_component[full_name]"
    end
  end
end
