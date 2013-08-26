require 'spec_helper'

describe "planning_applications/edit" do
  before(:each) do
    @planning_application = assign(:planning_application, stub_model(PlanningApplication,
      :user_id => 1,
      :planning_authority => "MyString",
      :planning_authority_reference => "MyString",
      :applicant_name => "MyString",
      :type => "",
      :location_address => "MyText",
      :description => "MyText",
      :decision => "MyString",
      :url_to_observations => "MyString",
      :number_of_observations => 1
    ))
  end

  it "renders the edit planning_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => planning_applications_path(@planning_application), :method => "post" do
      assert_select "input#planning_application_user_id", :name => "planning_application[user_id]"
      assert_select "input#planning_application_planning_authority", :name => "planning_application[planning_authority]"
      assert_select "input#planning_application_planning_authority_reference", :name => "planning_application[planning_authority_reference]"
      assert_select "input#planning_application_applicant_name", :name => "planning_application[applicant_name]"
      assert_select "input#planning_application_type", :name => "planning_application[type]"
      assert_select "textarea#planning_application_location_address", :name => "planning_application[location_address]"
      assert_select "textarea#planning_application_description", :name => "planning_application[description]"
      assert_select "input#planning_application_decision", :name => "planning_application[decision]"
      assert_select "input#planning_application_url_to_observations", :name => "planning_application[url_to_observations]"
      assert_select "input#planning_application_number_of_observations", :name => "planning_application[number_of_observations]"
    end
  end
end
