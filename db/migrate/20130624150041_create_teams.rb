class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :email
      t.references :system, index: true

      t.timestamps
    end
  end
end
