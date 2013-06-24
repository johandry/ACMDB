class MachineSystem < ActiveRecord::Base
  belongs_to :machine
  belongs_to :system
end
