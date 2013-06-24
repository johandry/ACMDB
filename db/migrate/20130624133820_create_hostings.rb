class CreateHostings < ActiveRecord::Migration
  def change
    create_table :hostings do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
