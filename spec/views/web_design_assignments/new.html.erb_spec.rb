require 'spec_helper'

describe "web_design_assignments/new" do
  before(:each) do
    assign(:web_design_assignment, stub_model(WebDesignAssignment,
      :user_id => 1,
      :job_reference => "MyText",
      :project_stage => "MyString"
    ).as_new_record)
  end

  it "renders new web_design_assignment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => web_design_assignments_path, :method => "post" do
      assert_select "input#web_design_assignment_user_id", :name => "web_design_assignment[user_id]"
      assert_select "textarea#web_design_assignment_job_reference", :name => "web_design_assignment[job_reference]"
      assert_select "input#web_design_assignment_project_stage", :name => "web_design_assignment[project_stage]"
    end
  end
end
