class UserProjects < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_projects, :project_statuses
  end
end
