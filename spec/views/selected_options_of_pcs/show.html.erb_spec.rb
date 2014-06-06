require 'spec_helper'

describe "selected_options_of_pcs/show" do
  before(:each) do
    @selected_options_of_pc = assign(:selected_options_of_pc, stub_model(SelectedOptionsOfPc,
      :user_id => 1,
      :description_of_pc_id => 2,
      :price_range_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
