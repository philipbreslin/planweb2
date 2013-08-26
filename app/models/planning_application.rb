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

class PlanningApplication < ActiveRecord::Base

  belongs_to :user
  attr_accessible :user_id, :applicant_name, :commenced_on, :commencement_notice_received_by_planning_authority_on, :decision, :decision_expected_on, :decision_received_on, :description, :extension_granted_on, :extension_requested_on, :location_address, :lodged_with_planning_authority_on, :number_of_observations, :planning_authority, :planning_authority_reference, :application_type, :url_to_observations, :validated_by_planning_authority_on
  validates :user_id, presence: true
end
