require 'spec_helper'

describe "description_of_components/edit" do
  before(:each) do
    @description_of_component = assign(:description_of_component, stub_model(DescriptionOfComponent,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit description_of_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_of_component_path(@description_of_component), "post" do
      assert_select "input#description_of_component_name[name=?]", "description_of_component[name]"
      assert_select "textarea#description_of_component_description[name=?]", "description_of_component[description]"
    end
  end
end
