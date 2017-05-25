class AddProjectAvgCostAndTime < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :avg_cost, :integer
    add_column :projects, :avg_time, :integer
  end
end
