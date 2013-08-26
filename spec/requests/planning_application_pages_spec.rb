require 'spec_helper'

describe "PlanningApplicationPages" do
  describe "GET /planning_application_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get planning_application_pages_index_path
      response.status.should be(200)
    end
  end

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "planning_application creation" do
    before { visit root_path }

    describe "with invalid information" do

    end
  end
end
