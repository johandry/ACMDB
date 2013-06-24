class Job < ActiveRecord::Base
  belongs_to :job_type
  belongs_to :box_name
  belongs_to :machine
  belongs_to :system
  belongs_to :priority
  belongs_to :job_status
end
