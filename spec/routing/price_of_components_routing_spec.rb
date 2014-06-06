require "spec_helper"

describe PriceOfComponentsController do
  describe "routing" do

    it "routes to #index" do
      get("/price_of_components").should route_to("price_of_components#index")
    end

    it "routes to #new" do
      get("/price_of_components/new").should route_to("price_of_components#new")
    end

    it "routes to #show" do
      get("/price_of_components/1").should route_to("price_of_components#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_of_components/1/edit").should route_to("price_of_components#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_of_components").should route_to("price_of_components#create")
    end

    it "routes to #update" do
      put("/price_of_components/1").should route_to("price_of_components#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_of_components/1").should route_to("price_of_components#destroy", :id => "1")
    end

  end
end
