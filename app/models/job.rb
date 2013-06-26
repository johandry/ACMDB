class Job < ActiveRecord::Base
  belongs_to :job_type
  belongs_to :box_name, class_name: "Job"
  belongs_to :machine
  belongs_to :system
  belongs_to :priority
  belongs_to :job_status
  belongs_to :submited_by, class_name: "Employee"
  belongs_to :modified_by, class_name: "Employee"
end
