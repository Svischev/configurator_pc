require 'spec_helper'

describe "description_of_pcs/new" do
  before(:each) do
    assign(:description_of_pc, stub_model(DescriptionOfPc,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new description_of_pc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_of_pcs_path, "post" do
      assert_select "input#description_of_pc_name[name=?]", "description_of_pc[name]"
      assert_select "textarea#description_of_pc_description[name=?]", "description_of_pc[description]"
    end
  end
end
