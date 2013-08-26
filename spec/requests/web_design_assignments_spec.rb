require 'spec_helper'

describe "WebDesignAssignments" do
  describe "GET /web_design_assignments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get web_design_assignments_path
      response.status.should be(200)
    end
  end
end
