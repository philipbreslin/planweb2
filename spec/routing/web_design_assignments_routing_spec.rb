require "spec_helper"

describe WebDesignAssignmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/web_design_assignments").should route_to("web_design_assignments#index")
    end

    it "routes to #new" do
      get("/web_design_assignments/new").should route_to("web_design_assignments#new")
    end

    it "routes to #show" do
      get("/web_design_assignments/1").should route_to("web_design_assignments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/web_design_assignments/1/edit").should route_to("web_design_assignments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/web_design_assignments").should route_to("web_design_assignments#create")
    end

    it "routes to #update" do
      put("/web_design_assignments/1").should route_to("web_design_assignments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/web_design_assignments/1").should route_to("web_design_assignments#destroy", :id => "1")
    end

  end
end
