class RenameProjectTypeToOrigin < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :type, :origin
  end
end
