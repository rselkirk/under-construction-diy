class AddToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :cost, :integer
    add_column :projects, :time, :integer
    add_column :projects, :material, :text
    add_column :projects, :url, :string
  end
end
