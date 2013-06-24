class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.string :server_name
      t.references :machine_status, index: true
      t.string :ip
      t.references :os, index: true
      t.references :environment, index: true
      t.references :hosting, index: true
      t.string :backup_server
      t.string :description
      t.text :comments

      t.timestamps
    end
  end
end
