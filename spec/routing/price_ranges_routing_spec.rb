require "spec_helper"

describe PriceRangesController do
  describe "routing" do

    it "routes to #index" do
      get("/price_ranges").should route_to("price_ranges#index")
    end

    it "routes to #new" do
      get("/price_ranges/new").should route_to("price_ranges#new")
    end

    it "routes to #show" do
      get("/price_ranges/1").should route_to("price_ranges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_ranges/1/edit").should route_to("price_ranges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_ranges").should route_to("price_ranges#create")
    end

    it "routes to #update" do
      put("/price_ranges/1").should route_to("price_ranges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_ranges/1").should route_to("price_ranges#destroy", :id => "1")
    end

  end
end
