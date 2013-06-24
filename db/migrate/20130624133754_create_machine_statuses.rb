class CreateMachineStatuses < ActiveRecord::Migration
  def change
    create_table :machine_statuses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
