class RemoveOriginFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :origin, :boolean
  end
end
