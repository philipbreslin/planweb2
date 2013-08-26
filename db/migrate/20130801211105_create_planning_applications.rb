class CreatePlanningApplications < ActiveRecord::Migration
  def change
    create_table :planning_applications do |t|
      t.integer :user_id
      t.string :planning_authority
      t.string :planning_authority_reference
      t.string :applicant_name
      t.string :application_type
      t.text :location_address
      t.date :lodged_with_planning_authority_on
      t.text :description
      t.date :validated_by_planning_authority_on
      t.date :decision_expected_on
      t.date :decision_received_on
      t.string :decision
      t.date :extension_requested_on
      t.date :extension_granted_on
      t.string :url_to_observations
      t.integer :number_of_observations
      t.date :commencement_notice_received_by_planning_authority_on
      t.date :commenced_on

      t.timestamps
    end
    add_index :planning_applications, [:user_id]
  end
end
