require 'spec_helper'

describe "web_design_assignments/index" do
  before(:each) do
    assign(:web_design_assignments, [
      stub_model(WebDesignAssignment,
        :user_id => 1,
        :job_reference => "MyText",
        :project_stage => "Project Stage"
      ),
      stub_model(WebDesignAssignment,
        :user_id => 1,
        :job_reference => "MyText",
        :project_stage => "Project Stage"
      )
    ])
  end

  it "renders a list of web_design_assignments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Project Stage".to_s, :count => 2
  end
end
