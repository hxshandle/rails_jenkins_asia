class AddProjectLevelIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_level_id, :integer
  end
end
