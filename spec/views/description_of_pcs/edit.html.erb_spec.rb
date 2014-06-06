require 'spec_helper'

describe "description_of_pcs/edit" do
  before(:each) do
    @description_of_pc = assign(:description_of_pc, stub_model(DescriptionOfPc,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit description_of_pc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_of_pc_path(@description_of_pc), "post" do
      assert_select "input#description_of_pc_name[name=?]", "description_of_pc[name]"
      assert_select "textarea#description_of_pc_description[name=?]", "description_of_pc[description]"
    end
  end
end
