# == Schema Information
#
# Table name: web_design_assignments
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  job_reference     :text
#  project_stage     :string(255)
#  issued_on         :date
#  completion_due_on :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class WebDesignAssignment < ActiveRecord::Base
  attr_accessible :completion_due_on, :issued_on, :job_reference, :project_stage, :user_id
  belongs_to :user
  PROJECT_STAGES = ['Prototype', '2nd Draft', '3rd Draft', 'Final Issue']

  validates :project_stage, presence: true, inclusion: {in: PROJECT_STAGES}
end
