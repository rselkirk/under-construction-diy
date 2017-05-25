class AddCounterColumnstoProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :save_count, :integer
    add_column :projects, :review_count, :integer
    add_column :projects, :complete_count, :integer
    add_column :projects, :avg_rating, :float
  end
end
