class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :job, index: true
      t.references :employee, index: true

      t.timestamps
    end
  end
end
