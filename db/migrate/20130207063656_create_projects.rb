class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :null => true
      t.text :description
      t.string :projectNo
      t.float :targetfob
      t.date :startDate
      t.date :endDate
      t.date :realEndDate
      t.boolean :isValid, :default => true

      t.timestamps
    end
  end
end
