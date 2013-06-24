class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :job_type, index: true
      t.references :box_name, index: true
      t.string :owner
      t.string :command
      t.references :machine, index: true
      t.string :permission
      t.integer :date_condition
      t.string :days_of_week
      t.string :start_times
      t.string :condition
      t.string :short_description
      t.string :str_out_file
      t.string :str_err_file
      t.integer :alarm_if_fail
      t.float :avg_runtime_min
      t.float :avg_runtime_sec
      t.string :max_runtime_min
      t.references :system, index: true
      t.text :description
      t.references :priority, index: true
      t.string :critical
      t.text :actions
      t.text :notes
      t.string :submited_by_id
      t.string :integer
      t.date :created_on
      t.string :modified_by_id
      t.string :integer
      t.date :last_modified_on
      t.text :update_log
      t.references :job_status, index: true

      t.timestamps
    end
  end
end
