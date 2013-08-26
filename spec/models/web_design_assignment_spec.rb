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

require 'spec_helper'

describe WebDesignAssignment do
  pending "add some examples to (or delete) #{__FILE__}"
end
