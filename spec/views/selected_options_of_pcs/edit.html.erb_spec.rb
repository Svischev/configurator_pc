require 'spec_helper'

describe "selected_options_of_pcs/edit" do
  before(:each) do
    @selected_options_of_pc = assign(:selected_options_of_pc, stub_model(SelectedOptionsOfPc,
      :user_id => 1,
      :description_of_pc_id => 1,
      :price_range_id => 1
    ))
  end

  it "renders the edit selected_options_of_pc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", selected_options_of_pc_path(@selected_options_of_pc), "post" do
      assert_select "input#selected_options_of_pc_user_id[name=?]", "selected_options_of_pc[user_id]"
      assert_select "input#selected_options_of_pc_description_of_pc_id[name=?]", "selected_options_of_pc[description_of_pc_id]"
      assert_select "input#selected_options_of_pc_price_range_id[name=?]", "selected_options_of_pc[price_range_id]"
    end
  end
end
