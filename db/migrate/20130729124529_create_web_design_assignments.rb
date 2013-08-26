class CreateWebDesignAssignments < ActiveRecord::Migration
  def change
    create_table :web_design_assignments do |t|
      t.integer :user_id
      t.text :job_reference
      t.string :project_stage
      t.date :issued_on
      t.date :completion_due_on

      t.timestamps
    end
    add_index :web_design_assignments, [:user_id]
  end
end
