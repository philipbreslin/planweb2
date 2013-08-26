require 'spec_helper'

describe "planning_applications/index" do
  before(:each) do
    assign(:planning_applications, [
      stub_model(PlanningApplication,
        :user_id => 1,
        :planning_authority => "Planning Authority",
        :planning_authority_reference => "Planning Authority Reference",
        :applicant_name => "Applicant Name",
        :type => "Type",
        :location_address => "MyText",
        :description => "MyText",
        :decision => "Decision",
        :url_to_observations => "Url To Observations",
        :number_of_observations => 2
      ),
      stub_model(PlanningApplication,
        :user_id => 1,
        :planning_authority => "Planning Authority",
        :planning_authority_reference => "Planning Authority Reference",
        :applicant_name => "Applicant Name",
        :type => "Type",
        :location_address => "MyText",
        :description => "MyText",
        :decision => "Decision",
        :url_to_observations => "Url To Observations",
        :number_of_observations => 2
      )
    ])
  end

  it "renders a list of planning_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Planning Authority".to_s, :count => 2
    assert_select "tr>td", :text => "Planning Authority Reference".to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Decision".to_s, :count => 2
    assert_select "tr>td", :text => "Url To Observations".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
