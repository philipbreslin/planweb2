# == Schema Information
#
# Table name: planning_applications
#
#  id                                                    :integer          not null, primary key
#  user_id                                               :integer
#  planning_authority                                    :string(255)
#  planning_authority_reference                          :string(255)
#  applicant_name                                        :string(255)
#  application_type                                      :string(255)
#  location_address                                      :text
#  lodged_with_planning_authority_on                     :date
#  description                                           :text
#  validated_by_planning_authority_on                    :date
#  decision_expected_on                                  :date
#  decision_received_on                                  :date
#  decision                                              :string(255)
#  extension_requested_on                                :date
#  extension_granted_on                                  :date
#  url_to_observations                                   :string(255)
#  number_of_observations                                :integer
#  commencement_notice_received_by_planning_authority_on :date
#  commenced_on                                          :date
#  created_at                                            :datetime         not null
#  updated_at                                            :datetime         not null
#

require 'spec_helper'

describe PlanningApplication do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is wrong!
    @planning_application = planning_applications_path.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @planning_application }

  it { should respond_to(:user_id) }
  it { should respond_to(:applicant_name) }
  it { should respond_to(:commenced_on) }
  it { should respond_to(:commencement_notice_received_by_planning_authority_on) }
  it { should respond_to(:decision) }
  it { should respond_to(:decision_expected_on) }
  it { should respond_to(:decision_received_on) }
  it { should respond_to(:description) }
  it { should respond_to(:extension_granted_on) }
  it { should respond_to(:extension_requested_on) }
  it { should respond_to(:location_address) }
  it { should respond_to(:lodged_with_planning_authority_on) }
  it { should respond_to(:number_of_observations) }
  it { should respond_to(:planning_authority) }
  it { should respond_to(:planning_authority_reference) }
  it { should respond_to(:type) }
  it { should respond_to(:url_to_observations) }
  it { should respond_to(:validated_by_planning_authority_on) }
  its(:user) { should == user }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        PlanningApplication.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end

  describe "when user_id is not present" do
    before { @planning_application.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @planning_application = " " }
    it { should_not be_valid }
  end
end
