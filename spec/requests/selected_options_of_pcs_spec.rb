require 'spec_helper'

describe "SelectedOptionsOfPcs" do
  describe "GET /selected_options_of_pcs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get selected_options_of_pcs_path
      response.status.should be(200)
    end
  end
end
