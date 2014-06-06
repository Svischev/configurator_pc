require 'spec_helper'

describe "description_of_components/new" do
  before(:each) do
    assign(:description_of_component, stub_model(DescriptionOfComponent,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new description_of_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_of_components_path, "post" do
      assert_select "input#description_of_component_name[name=?]", "description_of_component[name]"
      assert_select "textarea#description_of_component_description[name=?]", "description_of_component[description]"
    end
  end
end
