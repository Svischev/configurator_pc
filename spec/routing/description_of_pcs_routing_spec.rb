require "spec_helper"

describe DescriptionOfPcsController do
  describe "routing" do

    it "routes to #index" do
      get("/description_of_pcs").should route_to("description_of_pcs#index")
    end

    it "routes to #new" do
      get("/description_of_pcs/new").should route_to("description_of_pcs#new")
    end

    it "routes to #show" do
      get("/description_of_pcs/1").should route_to("description_of_pcs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/description_of_pcs/1/edit").should route_to("description_of_pcs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/description_of_pcs").should route_to("description_of_pcs#create")
    end

    it "routes to #update" do
      put("/description_of_pcs/1").should route_to("description_of_pcs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/description_of_pcs/1").should route_to("description_of_pcs#destroy", :id => "1")
    end

  end
end
