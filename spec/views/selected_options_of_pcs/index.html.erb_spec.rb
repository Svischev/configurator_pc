require 'spec_helper'

describe "selected_options_of_pcs/index" do
  before(:each) do
    assign(:selected_options_of_pcs, [
      stub_model(SelectedOptionsOfPc,
        :user_id => 1,
        :description_of_pc_id => 2,
        :price_range_id => 3
      ),
      stub_model(SelectedOptionsOfPc,
        :user_id => 1,
        :description_of_pc_id => 2,
        :price_range_id => 3
      )
    ])
  end

  it "renders a list of selected_options_of_pcs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
