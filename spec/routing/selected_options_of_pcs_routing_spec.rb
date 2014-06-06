require "spec_helper"

describe SelectedOptionsOfPcsController do
  describe "routing" do

    it "routes to #index" do
      get("/selected_options_of_pcs").should route_to("selected_options_of_pcs#index")
    end

    it "routes to #new" do
      get("/selected_options_of_pcs/new").should route_to("selected_options_of_pcs#new")
    end

    it "routes to #show" do
      get("/selected_options_of_pcs/1").should route_to("selected_options_of_pcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/selected_options_of_pcs/1/edit").should route_to("selected_options_of_pcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/selected_options_of_pcs").should route_to("selected_options_of_pcs#create")
    end

    it "routes to #update" do
      put("/selected_options_of_pcs/1").should route_to("selected_options_of_pcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/selected_options_of_pcs/1").should route_to("selected_options_of_pcs#destroy", :id => "1")
    end

  end
end
