class AddProjectLevelAndPriorityToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_level, :string, :default => "All New"
    remove_column :projects, :project_level_id

  end
end
