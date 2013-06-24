class Machine < ActiveRecord::Base
  belongs_to :machine_status
  belongs_to :os
  belongs_to :environment
  belongs_to :hosting
end
