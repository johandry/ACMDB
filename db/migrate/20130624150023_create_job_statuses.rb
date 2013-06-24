class CreateJobStatuses < ActiveRecord::Migration
  def change
    create_table :job_statuses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
