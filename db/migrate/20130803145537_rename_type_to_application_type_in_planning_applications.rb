class RenameTypeToApplicationTypeInPlanningApplications < ActiveRecord::Migration
  def up
    rename_column :planning_applications, :type, :application_type
  end

  def down
    rename_column :planning_applications, :application_type, :type
  end
end
