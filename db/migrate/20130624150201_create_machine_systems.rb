class CreateMachineSystems < ActiveRecord::Migration
  def change
    create_table :machine_systems do |t|
      t.references :machine, index: true
      t.references :system, index: true

      t.timestamps
    end
  end
end
