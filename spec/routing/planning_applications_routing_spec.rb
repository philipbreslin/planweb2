require "spec_helper"

describe PlanningApplicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/planning_applications").should route_to("planning_applications#index")
    end

    it "routes to #new" do
      get("/planning_applications/new").should route_to("planning_applications#new")
    end

    it "routes to #show" do
      get("/planning_applications/1").should route_to("planning_applications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/planning_applications/1/edit").should route_to("planning_applications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/planning_applications").should route_to("planning_applications#create")
    end

    it "routes to #update" do
      put("/planning_applications/1").should route_to("planning_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/planning_applications/1").should route_to("planning_applications#destroy", :id => "1")
    end

  end
end
