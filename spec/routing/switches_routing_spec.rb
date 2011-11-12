require "spec_helper"

describe SwitchesController do
  describe "routing" do

    it "routes to #index" do
      get("/switches").should route_to("switches#index")
    end

    it "routes to #new" do
      get("/switches/new").should route_to("switches#new")
    end

    it "routes to #show" do
      get("/switches/1").should route_to("switches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/switches/1/edit").should route_to("switches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/switches").should route_to("switches#create")
    end

    it "routes to #update" do
      put("/switches/1").should route_to("switches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/switches/1").should route_to("switches#destroy", :id => "1")
    end

  end
end
