require 'spec_helper'

describe "planning_applications/show" do
  before(:each) do
    @planning_application = assign(:planning_application, stub_model(PlanningApplication,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Planning Authority/)
    rendered.should match(/Planning Authority Reference/)
    rendered.should match(/Applicant Name/)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Decision/)
    rendered.should match(/Url To Observations/)
    rendered.should match(/2/)
  end
end
