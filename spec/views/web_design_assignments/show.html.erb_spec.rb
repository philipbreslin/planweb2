require 'spec_helper'

describe "web_design_assignments/show" do
  before(:each) do
    @web_design_assignment = assign(:web_design_assignment, stub_model(WebDesignAssignment,
      :user_id => 1,
      :job_reference => "MyText",
      :project_stage => "Project Stage"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Project Stage/)
  end
end
