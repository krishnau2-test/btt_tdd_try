require "spec_helper"

describe KineController do
  describe "routing" do

    it "routes to #index" do
      get("/kine").should route_to("kine#index")
    end

    it "routes to #new" do
      get("/kine/new").should route_to("kine#new")
    end

    it "routes to #show" do
      get("/kine/1").should route_to("kine#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kine/1/edit").should route_to("kine#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kine").should route_to("kine#create")
    end

    it "routes to #update" do
      put("/kine/1").should route_to("kine#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kine/1").should route_to("kine#destroy", :id => "1")
    end

  end
end
